import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ReviewTab extends StatelessWidget {
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

    return ListView(padding: EdgeInsets.all(10), children: <Widget>[
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
                            backgroundImage:
                                AssetImage('assets/background.jpg'),
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
                      semanticLabel: 'Text to announce in accessibility modes',
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
                            backgroundImage:
                                AssetImage('assets/background.jpg'),
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
                      TablerIcons.mood_sad,
                      color: Colors.red,
                      size: 24.0,
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
                            backgroundImage:
                                AssetImage('assets/background.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Matthew Mwesigwa",
                                style: TextStyle(
                                  color: Color(0xff1d2f6f),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Developer",
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
                            "20:00",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      TablerIcons.mood_neutral,
                      color: Colors.orange,
                      size: 24.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Text(
                        "Okay",
                        style: TextStyle(
                          color: Colors.orange,
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
        ],
      )
    ]);
  }
}
