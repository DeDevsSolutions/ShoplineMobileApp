import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Edit_Profile.dart';
import 'Help.dart';

void main() => runApp(UserProfile());

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

class UserProfile extends StatelessWidget {
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
        backgroundColor: colorCustom,
        title: Center(
          child: Text('Profile'),
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
                          backgroundImage: AssetImage('assets/background.jpg'),
                          radius: 70,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Mercy Atim",
                      style: TextStyle(
                        color: Color(0xff1d2f6f),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "Fashion Designer",
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
                          "Ntinda, Kampala",
                          style: TextStyle(
                            color: Color(0xff5458f7),
                            fontSize: 13,
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
                        color: Colors.red,
                        size: 20.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Text(
                          "Terrible",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
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
                                  fontWeight: FontWeight.w900,
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
                                  fontWeight: FontWeight.bold,
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfile()),
                          );
                        },
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
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
          ],
        )
      ]),
      endDrawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.font_download,
                          color: colorCustom,
                        ),
                        title: Text('Advertise'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.share_outlined,
                          color: colorCustom,
                        ),
                        title: Text('Share'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.help_outline_rounded,
                          color: colorCustom,
                        ),
                        title: Text('Help & Feedback'),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Help()),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_add_alt_1,
                          color: colorCustom,
                        ),
                        title: Text('Invite friends'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  title: Text(
                    'Logout',
                    textAlign: TextAlign.left,
                  ),
                  leading: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.logout,
                      color: colorCustom,
                    ),
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
