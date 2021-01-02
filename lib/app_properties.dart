import 'package:flutter/material.dart';

// const Color yellow = Color(0xffFDC054);
// const Color mediumYellow = Color(0xffFDB846);
// const Color darkYellow = Color(0xffE99E22);
// const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);
// const Color darkGrey = Color(0xff202020);
const Color yellow = Color(0xFF2196F3); //Colors.blue;
const Color mediumYellow = Colors.lightBlueAccent;
const Color darkYellow = Color(0xFF0D47A1); //Colors.blue[900];
const Color transparentYellow = Colors.transparent;//Color.fromRGBO(0, 0, 0, 0); //Color(0xFFE3F2FD); //Colors.blue[50];
const Color darkGrey = Color(0xff202020); //Colors.grey;

const LinearGradient mainButton = LinearGradient(colors: [
  Color.fromRGBO(236, 60, 3, 1),
  Color.fromRGBO(234, 60, 3, 1),
  Color.fromRGBO(216, 78, 16, 1),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}
