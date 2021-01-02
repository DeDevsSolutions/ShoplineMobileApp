import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomBar({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bag = {"first": true};
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home_outlined),
            // color: Colors.blueGrey,
            color: bag["first"] ? Colors.red : Colors.blue,
            onPressed: () {
              controller.animateTo(0);
              bag["first"] = !bag["first"];
              //
              // This is the trick
              //
              (context as Element).markNeedsBuild();
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
            icon: Icon(Icons.shopping_cart_outlined),
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
