import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

void main() => runApp(OrderPage());

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

class OrderPage extends StatelessWidget {
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
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff5d4c77), //change your color here
        ),
        title: Text(
          "Orders",
          style: TextStyle(
            color: Color(0xff5d4c77),
            fontSize: 18,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
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
              //height: 50,
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
                          "From Customers",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
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
                              //side: BorderSide(color: colorCustom.shade700),
                              borderRadius: BorderRadius.circular(20)),
                          textColor: colorCustom.shade700,
                          onPressed: () {},
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              "You",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
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
      ]),
    );
  }
}
