import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "dart:async";
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import "package:shopline/main.dart"; //for current user

class CustomersTabTest extends StatefulWidget {
  @override
  _CustomersTabTestState createState() => _CustomersTabTestState();
}

class _CustomersTabTestState extends State<CustomersTabTest> {
  bool didFetchOrders = false;
  List<Order> fetchedOrders = [];

  //final TextEditingController _commentController = TextEditingController()

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: buildOrders(),
      )
    ]);
  }

  Widget buildOrders() {
    if (this.didFetchOrders == false) {
      return FutureBuilder<List<Order>>(
          future: getOrders(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Container(
                  alignment: FractionalOffset.center,
                  child: CircularProgressIndicator());

            this.didFetchOrders = true;
            this.fetchedOrders = snapshot.data;
            return ListView(
              children: snapshot.data,
            );
          });
    } else {
      // for optimistic updating
      return ListView(children: this.fetchedOrders);
    }
  }

  Future<List<Order>> getOrders() async {
    List<Order> orders = [];

    QuerySnapshot data = await FirebaseFirestore.instance
        .collection("shopline_orders")
        .doc()
        .collection("orders")
        //.orderBy(postOwner = currentUserModel.id)
        .get();
    data.docs.forEach((DocumentSnapshot doc) {
      orders.add(Order.fromDocument(doc));
    });
    return orders;
  }

  /* addComment(String comment) {
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
  }*/
}

class Order extends StatelessWidget {
  final String username;
  final String userId;
  final String avatarUrl;
  final String comment;
  final Timestamp timestamp;

  Order(
      {this.username,
      this.userId,
      this.avatarUrl,
      this.comment,
      this.timestamp});

  factory Order.fromDocument(DocumentSnapshot document) {
    return Order(
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
        ListView(padding: EdgeInsets.all(10), children: <Widget>[
          Column(
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 110,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Graffiti Art(2)",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "UGX 20,000",
                                    style: TextStyle(
                                      color: Color(0xff5d4c77),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(children: [
                                    Icon(
                                      TablerIcons.gift,
                                      color: Color(0xff1d2f6f),
                                      size: 12,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    ),
                                    Text(
                                      "Free Delivery",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ]),
                                  Row(children: [
                                    Icon(
                                      TablerIcons.truck,
                                      color: Color(0xff1d2f6f),
                                      size: 12,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    ),
                                    Text(
                                      "Gayaza, Kasangati",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 13,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ],
                          ),
                        ]),
                  ])),
            ],
          )
        ])
      ],
      /* ListTile(
          title: Text(comment),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
        ), */
      //Divider(),
    );
  }
}
