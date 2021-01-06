import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(EditProfile());

class EditProfile extends StatelessWidget {
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
          child: Text('Edit Profile'),
        ),
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(0),
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.all(10),
                children: <Widget>[
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                          color: Colors.black54,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      Text(
                        'Profiles details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(height: 24, width: 24)
                    ],
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/background.jpg'),
                              radius: 70,
                            ),
                            Positioned(
                                bottom: 1,
                                right: 1,
                                child: GestureDetector(
                                    onTap: () {
                                      var snackBar = SnackBar(
                                        content: Text('Upload image'),
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
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                        Icons.add_a_photo,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: colorCustom,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    )))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Name',
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w500))),
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
                      padding: EdgeInsets.all(10),
                      child: Text('Bio',
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w500))),
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
                      padding: EdgeInsets.all(10),
                      child: Text('Location',
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w500))),
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
                      padding: EdgeInsets.all(10),
                      child: Text('Sex',
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w500))),
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
                      padding: EdgeInsets.all(10),
                      child: Text('Phone Number',
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w500))),
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
                      padding: EdgeInsets.all(10),
                      child: Text('Occupation/Profession',
                          style: TextStyle(
                              fontSize: 15,
                              color: primaryColor,
                              fontWeight: FontWeight.w500))),
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
                ],
              ),
              // child: Align(alignment: Alignment.topLeft, child: Text("Name")),
            ),
          ),
        ),
      ),
    );
  }
}
