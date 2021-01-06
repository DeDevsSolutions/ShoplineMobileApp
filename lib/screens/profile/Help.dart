import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:shopline/Edit_Profile.dart';
// import 'package:shopline/Feed_User_Profile.dart';
// import 'package:shopline/User_Profile.dart';

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

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: colorCustom,
    ),
    title: 'Shopline',
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  // bottom sheet
  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        backgroundColor: Colors.white,
        context: context,
        builder: (ctx) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      width: 70,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0x7f5458f7),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Refer to",
                      style: TextStyle(
                        color: Color(0xffff8c39),
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black12,
                        focusColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        contentPadding: EdgeInsets.all(15),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: Image.asset(
                                  '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: Image.asset(
                                  '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: Image.asset(
                                  '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: Image.asset(
                                  '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: Image.asset(
                                  '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              child: ClipOval(
                                child: Image.asset(
                                  '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xff1d2f6f),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        title: Text('Shopline Screens'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center(
        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('User Profile'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                );
              },
            ),
            RaisedButton(
              child: Text('Edit Profile'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                );
              },
            ),
            RaisedButton(
              child: Text('Feed User Profile'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedUserProfile()),
                );
              },
            ),
            RaisedButton(
              child: Text('Help & Feedback'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Help()),
                );
              },
            ),
            RaisedButton(
              child: Text('Referral Window'),
              onPressed: () => displayBottomSheet(context),
            ),
          ],
        ),*/
      ),
    );
  }
}

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width50 = size.width * 0.5;
    return Scaffold(
        backgroundColor: Color(0xffF1F1F1),
        appBar: AppBar(
          backgroundColor: colorCustom,
          title: Text("Help & Feedback"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
                // do something
              },
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(padding: EdgeInsets.all(10), children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text('What feedback would you like to give us?',
                        style: TextStyle(
                            fontSize: 15,
                            color: colorCustom,
                            fontWeight: FontWeight.w500))),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x7f5458f7), width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Describe it here in detail.',
                        style: TextStyle(
                            fontSize: 15,
                            color: colorCustom,
                            fontWeight: FontWeight.w500))),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x7f5458f7), width: 2.0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Attach Screenshots',
                        style: TextStyle(
                            fontSize: 15,
                            color: colorCustom,
                            fontWeight: FontWeight.w500))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.40,
                          child: Container(
                            child: Image.asset(
                              "Icons.import_contacts",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            width: width50,
                            height: 154,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xff5458f7),
                                width: 2,
                              ),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 60,
                            right: 80,
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.add_a_photo,
                                color: colorCustom,
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Text('Follow us',
                        style: TextStyle(
                            fontSize: 15,
                            color: colorCustom,
                            fontWeight: FontWeight.w500))),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.sports_soccer,
                          color: colorCustom,
                        ),
                        Icon(
                          Icons.sports_soccer,
                          color: colorCustom,
                        ),
                        Icon(
                          Icons.sports_soccer,
                          color: colorCustom,
                        ),
                      ],
                    )),
              ]),
            ),
          ),
        ));
  }
}
// 'Describe it here in detail'
