import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomBar({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home_outlined),
            // color: Colors.blueGrey,
            onPressed: () {
              controller.animateTo(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.list_alt),
            onPressed: () {
              controller.animateTo(1);
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              controller.animateTo(2);
            },
          ),
          IconButton(
            icon: Icon(Icons.pie_chart_outline_sharp),
            onPressed: () {
              controller.animateTo(3);
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {
              controller.animateTo(4);
            },
          )
        ],
      ),
    );
  }
}
