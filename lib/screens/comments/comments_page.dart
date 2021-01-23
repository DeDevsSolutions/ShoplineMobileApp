import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shopline/app_properties.dart';
import 'package:shopline/screens/discover/discover_two.dart';
import 'package:shopline/screens/profile/Help.dart';
import 'package:shopline/screens/rating/rating_page.dart';
import 'package:shopline/screens/discover/search_page.dart';
import 'package:shopline/screens/tracking_page.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.grey[100],
        child: SafeArea(
          child: Scaffold(
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
            body: Container(
                //height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.top),
                margin: const EdgeInsets.only(top: 10, bottom: 10.0),
                //padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Edward Clark",
                                            style: TextStyle(
                                              color: Color(0xff1d2f6f),
                                              fontSize: 13,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Phone Technician",
                                            style: TextStyle(
                                              color: Color(0xff424242),
                                              fontSize: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 248,
                                            height: 100,
                                            child: Text(
                                              "The biggest change in digital design in 2019 will be the makeup of the people doing the actual design work.\n@Steve please read this.",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          )
                                        ]),
                                  ]),
                              Row(children: <Widget>[
                                Text(
                                  "14:07",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontSize: 10,
                                  ),
                                ),
                              ])
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              margin: const EdgeInsets.only(top: 10, left: 210),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x668d83c0),
                                    blurRadius: 50,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                color: Colors.white,
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
                                            padding: EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "200",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 5),
                                            child: Icon(
                                              TablerIcons.arrow_forward_up,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            child: Text(
                                              "53",
                                              style: TextStyle(
                                                color: Color(0xff1d2f6f),
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
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
                          ],
                        ),
                        /* Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 5, top: 15),
                                width: 281,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xff5458f7),
                                    width: 2,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(children: <Widget>[
                                  Opacity(
                                    opacity: 0.50,
                                    child: Text(
                                      "Write your comment here",
                                      style: TextStyle(
                                        color: Color(0xff5458f7),
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ])),
                          ),
                          Container(
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
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ]) */
                      ])),
                  Container(
                      padding: EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Edward Clark",
                                            style: TextStyle(
                                              color: Color(0xff1d2f6f),
                                              fontSize: 13,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Phone Technician",
                                            style: TextStyle(
                                              color: Color(0xff424242),
                                              fontSize: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 248,
                                            height: 100,
                                            child: Text(
                                              "The biggest change in digital design in 2019 will be the makeup of the people doing the actual design work.\n@Steve please read this.",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          )
                                        ]),
                                  ]),
                              Row(children: <Widget>[
                                Text(
                                  "14:07",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontSize: 10,
                                  ),
                                ),
                              ])
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              margin: const EdgeInsets.only(top: 10, left: 210),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x668d83c0),
                                    blurRadius: 50,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                color: Colors.white,
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
                                            padding: EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "200",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 5),
                                            child: Icon(
                                              TablerIcons.arrow_forward_up,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            child: Text(
                                              "53",
                                              style: TextStyle(
                                                color: Color(0xff1d2f6f),
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
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
                          ],
                        ),
                        /* Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 5, top: 15),
                                width: 281,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xff5458f7),
                                    width: 2,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(children: <Widget>[
                                  Opacity(
                                    opacity: 0.50,
                                    child: Text(
                                      "Write your comment here",
                                      style: TextStyle(
                                        color: Color(0xff5458f7),
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ])),
                          ),
                          Container(
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
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ]) */
                      ])),
                  Container(
                      padding: EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Edward Clark",
                                            style: TextStyle(
                                              color: Color(0xff1d2f6f),
                                              fontSize: 13,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Phone Technician",
                                            style: TextStyle(
                                              color: Color(0xff424242),
                                              fontSize: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 248,
                                            height: 100,
                                            child: Text(
                                              "The biggest change in digital design in 2019 will be the makeup of the people doing the actual design work.\n@Steve please read this.",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          )
                                        ]),
                                  ]),
                              Row(children: <Widget>[
                                Text(
                                  "14:07",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontSize: 10,
                                  ),
                                ),
                              ])
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              margin: const EdgeInsets.only(top: 10, left: 210),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x668d83c0),
                                    blurRadius: 50,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                color: Colors.white,
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
                                            padding: EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "200",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 5),
                                            child: Icon(
                                              TablerIcons.arrow_forward_up,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            child: Text(
                                              "53",
                                              style: TextStyle(
                                                color: Color(0xff1d2f6f),
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
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
                          ],
                        ),
                        /* Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 5, top: 15),
                                width: 281,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xff5458f7),
                                    width: 2,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(children: <Widget>[
                                  Opacity(
                                    opacity: 0.50,
                                    child: Text(
                                      "Write your comment here",
                                      style: TextStyle(
                                        color: Color(0xff5458f7),
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ])),
                          ),
                          Container(
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
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ]) */
                      ])),
                  Container(
                      padding: EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Edward Clark",
                                            style: TextStyle(
                                              color: Color(0xff1d2f6f),
                                              fontSize: 13,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Phone Technician",
                                            style: TextStyle(
                                              color: Color(0xff424242),
                                              fontSize: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 248,
                                            height: 100,
                                            child: Text(
                                              "The biggest change in digital design in 2019 will be the makeup of the people doing the actual design work.\n@Steve please read this.",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          )
                                        ]),
                                  ]),
                              Row(children: <Widget>[
                                Text(
                                  "14:07",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xff1d2f6f),
                                    fontSize: 10,
                                  ),
                                ),
                              ])
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              margin: const EdgeInsets.only(top: 10, left: 210),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x668d83c0),
                                    blurRadius: 50,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                color: Colors.white,
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
                                            padding: EdgeInsets.only(
                                                left: 10, right: 5),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "200",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 5),
                                            child: Icon(
                                              TablerIcons.arrow_forward_up,
                                              color: Color(0xff1d2f6f),
                                              size: 14,
                                              semanticLabel:
                                                  'Text to announce in accessibility modes',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                            child: Text(
                                              "53",
                                              style: TextStyle(
                                                color: Color(0xff1d2f6f),
                                                fontSize: 13,
                                                fontFamily: "Poppins",
                                                //fontWeight: FontWeight.w500,
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
                          ],
                        ),
                        /* Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 5, top: 15),
                                width: 281,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Color(0xff5458f7),
                                    width: 2,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Column(children: <Widget>[
                                  Opacity(
                                    opacity: 0.50,
                                    child: Text(
                                      "Write your comment here",
                                      style: TextStyle(
                                        color: Color(0xff5458f7),
                                        fontSize: 16,
                                      ),
                                    ),
                                  )
                                ])),
                          ),
                          Container(
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
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ]) */
                      ])),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: 350,
                      //margin: const EdgeInsets.only(bottom: 20),
                      /* decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ), */
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Opacity(
                              opacity: 0.50,
                              child: Container(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  margin:
                                      const EdgeInsets.only(right: 5, top: 15),
                                  width: 281,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Color(0xff5458f7),
                                      width: 2,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(children: <Widget>[
                                    Opacity(
                                      opacity: 1.0,
                                      child: TextFormField(
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
                                            hintText:
                                                "Write your comment here"),
                                      ),
                                    ),
                                    /* Opacity(
                                      opacity: 0.50,
                                      child: Text(
                                        "Write your comment here",
                                        style: TextStyle(
                                          color: Color(0xff5458f7),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ) */
                                  ])),
                            ),
                            Container(
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
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            ),
                          ]))
                ])),
          ),
        ));
  }
}
