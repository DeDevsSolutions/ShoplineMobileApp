import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

void main() => runApp(FeedUserProfile());

void handleClick(String value) {
  switch (value) {
    case 'Share':
      break;
    case 'Turn on notifications':
      break;
    case 'Mute':
      break;
    case 'Report':
      break;
  }
}

class FeedUserProfile extends StatelessWidget {
  final _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(84, 88, 246, .1),
      100: Color.fromRGBO(84, 88, 246, .2),
      200: Color.fromRGBO(84, 88, 246, .3),
      300: Color.fromRGBO(84, 88, 246, .4),
      400: Color.fromRGBO(84, 88, 246, .5),
      500: Color.fromRGBO(84, 88, 246, .6),
      600: Color.fromRGBO(84, 88, 246, .7),
      700: Color.fromRGBO(84, 88, 246, .8),
      800: Color.fromRGBO(84, 88, 246, .9),
      900: Color.fromRGBO(84, 88, 246, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xff5458F6, color);
    const primaryColor = Color(0xff5458F6);
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        title: Center(
          child: Text('Feed User Profile'),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Share', 'Turn on notifications', 'Mute', 'Report'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(padding: EdgeInsets.all(10), children: <Widget>[
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 70,
                          child: ClipOval(
                            child: Image.asset(
                              'images/girl.jpg',
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Mary Aine",
                      style: TextStyle(
                        color: Color(0xff1d2f6f),
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "Street Artist",
                    style: TextStyle(
                      color: Color(0xff1d2f6f),
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: colorCustom,
                        size: 20.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Gayaza, Kasangati",
                          style: TextStyle(
                            color: Color(0xff5458f7),
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.tag_faces,
                        color: Color(0xff069506),
                        size: 20.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Text(
                          "Great",
                          style: TextStyle(
                            color: Color(0xff069506),
                            fontSize: 10,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "24",
                                style: TextStyle(
                                  color: Color(0xff1d2f6f),
                                  fontSize: 25,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "CATALOG",
                              style: TextStyle(
                                color: Color(0x7f1d2f6f),
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "45.6k",
                                style: TextStyle(
                                  color: Color(0xff1d2f6f),
                                  fontSize: 25,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "FOLLOWERS",
                              style: TextStyle(
                                color: Color(0x7f1d2f6f),
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "100k",
                                style: TextStyle(
                                  color: Color(0xff1d2f6f),
                                  fontSize: 25,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "REFERRALS",
                              style: TextStyle(
                                color: Color(0x7f1d2f6f),
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                          width: 150,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xffE4E5FD),
                            textColor: Color(0xff5458f7),
                            onPressed: () {},
                            child: Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          width: 60,
                          height: 40,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xff5458f7),
                            textColor: Color(0xff5458f7),
                            onPressed: () {
                              var snackBar = SnackBar(
                                content: Text('Refer To'),
                                action: SnackBarAction(
                                  label: 'View',
                                  textColor: Color(0xffff8c39),
                                  onPressed: () {
                                    // Some code to undo the change.
                                  },
                                ),
                              );
                              _globalKey.currentState.showSnackBar(snackBar);
                            },
                            child: Icon(
                              Icons.people_rounded,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 328,
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.call_outlined,
                          color: Color(0xffff8c39),
                          size: 16.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "+26757712667",
                          style: TextStyle(
                            color: Color(0xff1d2f6f),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.email_outlined,
                          color: Color(0xffff8c39),
                          size: 16.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "maryaine@gmail.com",
                          style: TextStyle(
                            color: Color(0xff1d2f6f),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.link_rounded,
                          color: Color(0xffff8c39),
                          size: 18.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "www.fashionforward.com",
                          style: TextStyle(
                            color: Color(0xff1d2f6f),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Featured",
                      style: TextStyle(
                        color: Color(0xff1d2f6f),
                        fontSize: 13,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: colorCustom.shade500,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: colorCustom.shade500,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: colorCustom.shade500,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: colorCustom.shade500,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: FlatButton(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xffff8c39),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text(
                          "Catalog",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: colorCustom.shade700),
                            borderRadius: BorderRadius.circular(20)),
                        textColor: colorCustom.shade700,
                        onPressed: () {},
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xffff8c39),
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text(
                          "Offers",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
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
                          CircleAvatar(
                            radius: 20,
                            child: ClipOval(
                              child: Image.asset(
                                'images/girl.jpg',
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mary Aine",
                                style: TextStyle(
                                  color: Color(0xff1d2f6f),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Street Artist",
                                style: TextStyle(
                                  color: Color(0xff1d2f6f),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("2hrs"),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Material(
                  child: InkWell(
                    onTap: () {
                      var snackBar = SnackBar(
                        content: Text('View Image'),
                        action: SnackBarAction(
                          label: 'View',
                          textColor: Color(0xffff8c39),
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      _globalKey.currentState.showSnackBar(snackBar);
                    },
                    // handle your onTap here
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: colorCustom.shade500,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                //image view
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: colorCustom.shade200,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 5),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 24,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    ),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "6.2k",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 5),
                                    child: Icon(
                                      Icons.message_outlined,
                                      color: colorCustom.shade500,
                                      size: 24,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    ),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "259",
                                      style: TextStyle(
                                        color: colorCustom,
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 5),
                                    child: Icon(
                                      Icons.repeat_rounded,
                                      color: Color(0xffff8c39),
                                      size: 24,
                                      semanticLabel:
                                          'Text to announce in accessibility modes',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    child: Text(
                                      "53",
                                      style: TextStyle(
                                        color: Color(0xffff8c39),
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 50,
                        child: FlatButton(
                          onPressed: () {
                            var snackBar = SnackBar(
                              content: Text('Shop Item'),
                              action: SnackBarAction(
                                label: 'View',
                                textColor: Color(0xffff8c39),
                                onPressed: () {
                                  // Some code to undo the change.
                                },
                              ),
                            );
                            _globalKey.currentState.showSnackBar(snackBar);
                          },
                          color: Color(0xffE4E5FD),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: colorCustom,
                            size: 24.0,
                          ),
                          padding: EdgeInsets.all(12),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),

                    /*Container(
                  // padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    color: Color(0xffE4E5FD),
                    textColor: Color(0xff5458f7),
                    onPressed: () {},
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: colorCustom,
                      size: 24.0,
                    ),
                  ),
                ),*/
                    // MaterialButton(onPressed:() {},
                    //   color: Color(0xffE4E5FD),
                    //   child: Icon(
                    //     Icons.shopping_bag_outlined,
                    //     color: colorCustom,
                    //     size: 24.0,
                    //   ),
                    //   padding: EdgeInsets.all(10),
                    //   shape: CircleBorder(),
                    // ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sculpture",
                      style: TextStyle(
                        color: Color(0xff1d2f6f),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "UGX 259,999",
                      style: TextStyle(
                        color: Color(0xff5d4c77),
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      child: Text(
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    child: Text(
                      "You ordered for Graffiti Art, how was the service?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff5d4c77),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TablerIcons.mood_sad,
                              color: Colors.redAccent,
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                          Text('Terrible',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TablerIcons.mood_sad,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                          Text('Bad',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TablerIcons.mood_neutral,
                              color: Color(0xffff8c39),
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                          Text('Okay',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffff8c39),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TablerIcons.mood_happy,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                          Text('Good',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TablerIcons.mood_suprised,
                              color: Color(0xff069506),
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                          Text('Great',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff069506),
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text('Write a review',
                            style: TextStyle(
                                fontSize: 15,
                                color: colorCustom.shade700,
                                fontWeight: FontWeight.w500))),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: colorCustom[300], width: 2.0),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      contentPadding: EdgeInsets.all(15),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: 120,
                      child: FlatButton(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: colorCustom,
                        textColor: Colors.white,
                        onPressed: () {
                          var snackBar = SnackBar(
                            content: Text('Submitted'),
                            action: SnackBarAction(
                              label: 'View',
                              textColor: Color(0xffff8c39),
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          _globalKey.currentState.showSnackBar(snackBar);
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                TablerIcons.mood_suprised,
                                color: Color(0xff069506),
                              ),
                              SizedBox(
                                height: 30,
                                width: 5,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.green.shade100,
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              Colors.green),
                                      value: 0.9,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('40k',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff069506),
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                TablerIcons.mood_happy,
                                color: Color(0xff069506),
                              ),
                              SizedBox(
                                height: 30,
                                width: 5,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.green.shade100,
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              Colors.green),
                                      value: 0.6,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('16k',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff069506),
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                TablerIcons.mood_neutral,
                                color: Color(0xffff8c39),
                              ),
                              SizedBox(
                                height: 30,
                                width: 5,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.orange.shade100,
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              Color(0xffff8c39)),
                                      value: 0.2,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('4k',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xffff8c39),
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                TablerIcons.mood_sad,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 30,
                                width: 5,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.red.shade100,
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              Colors.red),
                                      value: 0.8,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('37k',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                TablerIcons.mood_sad,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 30,
                                width: 5,
                              ),
                              SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: LinearProgressIndicator(
                                      backgroundColor: Colors.red.shade100,
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              Colors.red),
                                      value: 0.1,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('3k',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // You can use like this way or like the below line
                          //borderRadius: new BorderRadius.circular(30.0),
                          color: Color(0xffE4E5FD),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "100k",
                              style: TextStyle(
                                color: colorCustom,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rating: ",
                        style: TextStyle(
                          color: Color(0xff1d2f6f),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Great",
                        style: TextStyle(
                          color: colorCustom,
                          fontSize: 17,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: ClipOval(
                                child: Image.asset(
                                  'images/girl.jpg',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Edward Clark",
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Phone Technician",
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "14:05",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.tag_faces,
                        color: Color(0xff069506),
                        size: 20.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Text(
                          "Great",
                          style: TextStyle(
                            color: Color(0xff069506),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                      style: TextStyle(
                        color: Color(0xff424242),
                        fontSize: 13,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: ClipOval(
                                child: Image.asset(
                                  'images/girl.jpg',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ritah Kanya",
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Confectioner",
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "15:35",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.tag_faces,
                        color: Colors.red,
                        size: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Text(
                          "Bad",
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
