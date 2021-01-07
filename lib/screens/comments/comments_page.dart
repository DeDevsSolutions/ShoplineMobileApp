import 'package:shopline/app_properties.dart';
import 'package:shopline/screens/discover/discover_two.dart';
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
        child: Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: <Widget>[
              Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 103.32,
                        height: 36.01,
                        alignment: Alignment.center,
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
                          )
                        ]))
                  ]),
              Container(
                  width: 360,
                  height: 580,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(children: <Widget>[
                    Container(
                        width: 360,
                        height: 520,
                        child: Column(children: <Widget>[
                          Row(children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/background.jpg',
                              ),
                              maxRadius: 24,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Text(
                                    "14:07",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                    ),
                                  ),
                                ]),
                            Row(children: <Widget>[
                              Text(
                                "Phone Technician",
                                style: TextStyle(
                                  color: Color(0xff424242),
                                  fontSize: 10,
                                ),
                              ),
                            ])
                          ]),
                          Row(children: <Widget>[
                            SizedBox(
                              width: 248,
                              child: Text(
                                "The biggest change in digital design in 2019 will be the makeup of the people doing the actual design work.\n@Steve please read this.",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            )
                          ]),
                          Row(children: <Widget>[
                            Container(
                              width: 123,
                              height: 36,
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
                            )
                          ])
                        ])),
                    Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.50,
                            child: Container(
                                width: 253,
                                height: 42,
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
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x595458f7),
                                      blurRadius: 40,
                                      offset: Offset(0, 18))
                                ],
                                color: Color(0xff5458f7),
                              ))
                        ])
                  ]))
            ])),
      ),
    );
  }
}
