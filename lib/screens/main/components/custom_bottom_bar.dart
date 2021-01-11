import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
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
            icon: Icon(TablerIcons.home),
            // color: Colors.blueGrey,
            onPressed: () {
              controller.animateTo(0);
            },
          ),
          IconButton(
            icon: Icon(TablerIcons.search),
            onPressed: () {
              controller.animateTo(1);
            },
          ),
          IconButton(
            icon: Icon(TablerIcons.bell),
            onPressed: () {
              controller.animateTo(2);
            },
          ),
          IconButton(
            icon: Icon(TablerIcons.chart_pie),
            onPressed: () {
              controller.animateTo(3);
            },
          ),
          IconButton(
            icon: Icon(TablerIcons.user),
            onPressed: () {
              controller.animateTo(4);
            },
          )
        ],
      ),
    );
  }
}
