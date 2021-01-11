import 'package:shopline/app_properties.dart';
import 'package:flutter/material.dart';

import 'register_page.dart';

class WelcomeBackPage extends StatefulWidget {
  @override
  _WelcomeBackPageState createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage> {
  final _globalKey = GlobalKey<ScaffoldState>();
  TextEditingController email =
      TextEditingController(text: 'example@email.com');

  TextEditingController password = TextEditingController(text: '12345678');

  @override
  // Widget build(BuildContext context) {
  //   Widget welcomeBack = Text(
  //     'Welcome Back Roberto,',
  //     style: TextStyle(
  //         color: Colors.white,
  //         fontSize: 34.0,
  //         fontWeight: FontWeight.bold,
  //         shadows: [
  //           BoxShadow(
  //             color: Color.fromRGBO(0, 0, 0, 0.15),
  //             offset: Offset(0, 5),
  //             blurRadius: 10.0,
  //           )
  //         ]),
  //   );

  //   Widget subTitle = Padding(
  //       padding: const EdgeInsets.only(right: 56.0),
  //       child: Text(
  //         'Login to your account using\nMobile number',
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 16.0,
  //         ),
  //       ));

  //   Widget loginButton = Positioned(
  //     left: MediaQuery.of(context).size.width / 4,
  //     bottom: 40,
  //     child: InkWell(
  //       onTap: () {
  //         Navigator.of(context)
  //             .push(MaterialPageRoute(builder: (_) => RegisterPage()));
  //       },
  //       child: Container(
  //         width: MediaQuery.of(context).size.width / 2,
  //         height: 80,
  //         child: Center(
  //             child: new Text("Log In",
  //                 style: const TextStyle(
  //                     color: const Color(0xfffefefe),
  //                     fontWeight: FontWeight.w600,
  //                     fontStyle: FontStyle.normal,
  //                     fontSize: 20.0))),
  //         decoration: BoxDecoration(
  //             gradient: LinearGradient(
  //                 colors: [
  //                   Color.fromRGBO(236, 60, 3, 1),
  //                   Color.fromRGBO(234, 60, 3, 1),
  //                   Color.fromRGBO(216, 78, 16, 1),
  //                 ],
  //                 begin: FractionalOffset.topCenter,
  //                 end: FractionalOffset.bottomCenter),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Color.fromRGBO(0, 0, 0, 0.16),
  //                 offset: Offset(0, 5),
  //                 blurRadius: 10.0,
  //               )
  //             ],
  //             borderRadius: BorderRadius.circular(9.0)),
  //       ),
  //     ),
  //   );

  //   Widget loginForm = Container(
  //     height: 240,
  //     child: Stack(
  //       children: <Widget>[
  //         Container(
  //           height: 160,
  //           width: MediaQuery.of(context).size.width,
  //           padding: const EdgeInsets.only(left: 32.0, right: 12.0),
  //           decoration: BoxDecoration(
  //               color: Color.fromRGBO(255, 255, 255, 0.8),
  //               borderRadius: BorderRadius.only(
  //                   topLeft: Radius.circular(10),
  //                   bottomLeft: Radius.circular(10))),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             children: <Widget>[
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 8.0),
  //                 child: TextField(
  //                   controller: email,
  //                   style: TextStyle(fontSize: 16.0),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 8.0),
  //                 child: TextField(
  //                   controller: password,
  //                   style: TextStyle(fontSize: 16.0),
  //                   obscureText: true,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         loginButton,
  //       ],
  //     ),
  //   );

  //   Widget forgotPassword = Padding(
  //     padding: const EdgeInsets.only(bottom: 20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         Text(
  //           'Forgot your password? ',
  //           style: TextStyle(
  //             fontStyle: FontStyle.italic,
  //             color: Color.fromRGBO(255, 255, 255, 0.5),
  //             fontSize: 14.0,
  //           ),
  //         ),
  //         InkWell(
  //           onTap: () {},
  //           child: Text(
  //             'Reset password',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontWeight: FontWeight.bold,
  //               fontSize: 14.0,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );

  //   return Scaffold(
  //     body: Stack(
  //       children: <Widget>[
  //         Container(
  //           decoration: BoxDecoration(
  //               image: DecorationImage(
  //                   image: AssetImage('assets/background.jpg'),
  //                   fit: BoxFit.cover)),
  //         ),
  //         Container(
  //           decoration: BoxDecoration(
  //             color: transparentYellow,
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 28.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Spacer(flex: 3),
  //               welcomeBack,
  //               Spacer(),
  //               subTitle,
  //               Spacer(flex: 2),
  //               loginForm,
  //               Spacer(flex: 2),
  //               forgotPassword
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
  //**************************************************************************************/
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  Widget build(BuildContext context) {
    Widget welcomeBack = Text(
      'Welcome Back !',
      style: TextStyle(
          color: Colors.blue,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
          shadows: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              offset: Offset(0, 5),
              blurRadius: 10.0,
            )
          ]),
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => RegisterPage()));
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    Widget forgotPassword = Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Forgot your password? ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              fontSize: 14.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Reset password',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                welcomeBack,
                SizedBox(
                  height: 120.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButon,
                SizedBox(height: 15.0),
                forgotPassword,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
