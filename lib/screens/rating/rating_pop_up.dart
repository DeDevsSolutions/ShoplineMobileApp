import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class RatingPopUp extends StatelessWidget {
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

    return SingleChildScrollView(
      // physics: ClampingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[50]),
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
                Flexible(
                  child: Column(
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
                ),
                Flexible(
                  child: Column(
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
                ),
                Flexible(
                    child: Column(
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
                )),
                Flexible(
                    child: Column(
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
                )),
                Flexible(
                    child: Column(
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
                )),
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
                  borderSide: BorderSide(color: colorCustom[300], width: 2.0),
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
    );
  }
}
