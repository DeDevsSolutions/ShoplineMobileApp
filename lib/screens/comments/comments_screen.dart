import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "dart:async";
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import "package:shopline/main.dart"; //for current user

class CommentScreen extends StatefulWidget {
  final String postId;
  final String postOwner;
  final String postMediaUrl;

  const CommentScreen({this.postId, this.postOwner, this.postMediaUrl});
  @override
  _CommentScreenState createState() => _CommentScreenState(
      postId: this.postId,
      postOwner: this.postOwner,
      postMediaUrl: this.postMediaUrl);
}

class _CommentScreenState extends State<CommentScreen> {
  final String postId;
  final String postOwner;
  final String postMediaUrl;

  bool didFetchComments = false;
  List<Comment> fetchedComments = [];

  final TextEditingController _commentController = TextEditingController();

  _CommentScreenState({this.postId, this.postOwner, this.postMediaUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.all(8),
                width: 103.32,
                height: 36.01,
                //alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffff8c39),
                ),
                child: Column(children: <Widget>[
                  Text(
                    "Comments",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
              CloseButton(
                color: Colors.black,
              )
            ]),
      ),
      body: buildPage(),
    );
  }

  Widget buildPage() {
    return Column(
      children: [
        Expanded(
          child: buildComments(),
        ),
        Divider(),
        ListTile(
          title: TextFormField(
            controller: _commentController,
            maxLines: null,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Color(0xff5458f7),
                  fontSize: 16,
                ),
                hintText: "Write your comment here"),
            onFieldSubmitted: addComment,
          ),
          trailing: OutlineButton(
            onPressed: () {
              addComment(_commentController.text);
            },
            borderSide: BorderSide.none,
            //child: Text("Post"),
            child: Container(
              width: 42,
              height: 42,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              margin: const EdgeInsets.only(right: 5, top: 15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Color(0x595458f7),
                      blurRadius: 40,
                      offset: Offset(0, 18))
                ],
                color: Color(0xff5458f7),
              ),
              child: Icon(
                TablerIcons.send,
                color: Colors.white,
                size: 24,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildComments() {
    if (this.didFetchComments == false) {
      return FutureBuilder<List<Comment>>(
          future: getComments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Container(
                  alignment: FractionalOffset.center,
                  child: CircularProgressIndicator());

            this.didFetchComments = true;
            this.fetchedComments = snapshot.data;
            return ListView(
              children: snapshot.data,
            );
          });
    } else {
      // for optimistic updating
      return ListView(children: this.fetchedComments);
    }
  }

  Future<List<Comment>> getComments() async {
    List<Comment> comments = [];

    QuerySnapshot data = await FirebaseFirestore.instance
        .collection("shopline_comments")
        .doc(postId)
        .collection("comments")
        .get();
    data.docs.forEach((DocumentSnapshot doc) {
      comments.add(Comment.fromDocument(doc));
    });
    return comments;
  }

  addComment(String comment) {
    _commentController.clear();
    FirebaseFirestore.instance
        .collection("shopline_comments")
        .doc(postId)
        .collection("comments")
        .add({
      "username": currentUserModel.username,
      "comment": comment,
      "timestamp": Timestamp.now(),
      "avatarUrl": currentUserModel.photoUrl,
      "userId": currentUserModel.id
    });

    //adds to postOwner's activity feed
    FirebaseFirestore.instance
        .collection("insta_a_feed")
        .doc(postOwner)
        .collection("items")
        .add({
      "username": currentUserModel.username,
      "userId": currentUserModel.id,
      "type": "comment",
      "userProfileImg": currentUserModel.photoUrl,
      "commentData": comment,
      "timestamp": Timestamp.now(),
      "postId": postId,
      "mediaUrl": postMediaUrl,
    });

    // add comment to the current listview for an optimistic update
    setState(() {
      fetchedComments = List.from(fetchedComments)
        ..add(Comment(
            username: currentUserModel.username,
            comment: comment,
            timestamp: Timestamp.now(),
            avatarUrl: currentUserModel.photoUrl,
            userId: currentUserModel.id));
    });
  }
}

class Comment extends StatelessWidget {
  final String username;
  final String userId;
  final String avatarUrl;
  final String comment;
  final Timestamp timestamp;

  Comment(
      {this.username,
      this.userId,
      this.avatarUrl,
      this.comment,
      this.timestamp});

  factory Comment.fromDocument(DocumentSnapshot document) {
    return Comment(
      username: document['username'],
      userId: document['userId'],
      comment: document["comment"],
      timestamp: document["timestamp"],
      avatarUrl: document["avatarUrl"],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(comment),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
        ),
        Divider(),
      ],
    );
  }
}
