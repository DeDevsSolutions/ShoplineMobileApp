import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CatalogTab extends StatelessWidget {
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

    return ListView(key: _globalKey, padding: EdgeInsets.all(10), children: <
        Widget>[
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
                        CircleAvatar(
                          radius: 20,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/background.jpg',
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
                              "Mercy Atim",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Fashion Designer",
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
                    // handle your onTap here
                  },

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/background.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
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
                                  padding: EdgeInsets.only(left: 10, right: 5),
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
                                  padding: EdgeInsets.only(left: 20, right: 5),
                                  child: Icon(
                                    TablerIcons.message_2,
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
                                  padding: EdgeInsets.only(left: 20, right: 5),
                                  child: Icon(
                                    TablerIcons.repeat,
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
                          TablerIcons.shopping_cart,
                          color: colorCustom,
                          size: 24.0,
                        ),
                        padding: EdgeInsets.all(12),
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
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
                      fontWeight: FontWeight.bold,
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
                      fontFamily: 'poppins',
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
        ],
      ),
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
                        CircleAvatar(
                          radius: 20,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/background.jpg',
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
                              "Mercy Atim",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Fashion Designer",
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
                      content: Text('Item image'),
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
                                  padding: EdgeInsets.only(left: 10, right: 5),
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
                                  padding: EdgeInsets.only(left: 20, right: 5),
                                  child: Icon(
                                    TablerIcons.message_2,
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
                                  padding: EdgeInsets.only(left: 20, right: 5),
                                  child: Icon(
                                    TablerIcons.repeat,
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
                          TablerIcons.shopping_cart,
                          color: colorCustom,
                          size: 24.0,
                        ),
                        padding: EdgeInsets.all(12),
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
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
                      fontWeight: FontWeight.bold,
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
                      fontFamily: 'poppins',
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
        ],
      ),
    ]);
  }
}
