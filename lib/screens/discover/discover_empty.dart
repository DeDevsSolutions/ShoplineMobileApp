import 'package:shopline/app_properties.dart';
import 'package:shopline/screens/discover/discover_two.dart';
import 'package:shopline/screens/rating/rating_page.dart';
import 'package:shopline/screens/discover/search_page.dart';
import 'package:shopline/screens/tracking_page.dart';
import 'package:flutter/material.dart';

class DiscoverEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[100],
      child: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(children: <Widget>[
              Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BackButton(),
                    Container(
                      width: 320,
                      height: 42,
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: IconButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => SearchPage())),
                          icon: Icon(Icons.search_outlined)),
                    ),
                  ]),
              Container(
                  width: 360,
                  height: 580,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(children: <Widget>[
                    Image(image: AssetImage('assets/search_empty.PNG')),
                    Opacity(
                      opacity: 0.50,
                      child: Text(
                        "No Search Results",
                        style: TextStyle(
                          color: Color(0xff1d2f6f),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ]))
            ])),
      ),
    );
  }
}
