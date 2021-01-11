import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class MarketStatsTab extends StatelessWidget {
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
            padding: EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Subscribe for market stats today",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1d2f6f),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      TablerIcons.check,
                      color: Colors.orange,
                      size: 22.0,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                      child: Text(
                        "Get data on customer demographics, to help you understand and serve them better",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 12,
                        ),
                      ),
                    ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      TablerIcons.check,
                      color: Colors.orange,
                      size: 22.0,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Text(
                        "Set your sales target and monitor them in real time",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 12,
                        ),
                      ),
                    ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      TablerIcons.check,
                      color: Colors.orange,
                      size: 22.0,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Text(
                        "Get data on new markets for your products",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 12,
                        ),
                      ),
                    ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      TablerIcons.check,
                      color: Colors.orange,
                      size: 22.0,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Text(
                        "Get to know how many people have your products on their wishlist",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 12,
                        ),
                      ),
                    ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      TablerIcons.check,
                      color: Colors.orange,
                      size: 22.0,
                    ),
                    Flexible(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Text(
                        "Get to see the general performance of your sector",
                        style: TextStyle(
                          color: Color(0xff424242),
                          fontSize: 12,
                        ),
                      ),
                    ))
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff5458f7),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily Plan",
                            style: TextStyle(
                              color: Color(0xff1d2f6f),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$2",
                            style: TextStyle(
                              color: Color(0xffff8c39),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlatButton(
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xffff8c39),
                            textColor: Colors.white,
                            onPressed: () {},
                            child: Text(
                              "Save 65%",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
