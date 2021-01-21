import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shopline/app_properties.dart';
import 'package:shopline/screens/rating/rating_page.dart';
import 'package:shopline/screens/tracking_page.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[100],
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Color(0xff5d4c77), //change your color here
          ),
          automaticallyImplyLeading: false,
          title: Text(
            "Notifications",
            style: TextStyle(
              color: Color(0xff5d4c77),
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [Icon(TablerIcons.chart_candle)],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            child: Column(children: <Widget>[
              Flexible(
                child: ListView(
                  children: <Widget>[
                    // Request amount
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "2m",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "200 people liked your post",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "4h",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "4000 followed you",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "Yesterday",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "3 people rated and reviewed you",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "3d",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    TablerIcons.basket,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "20 people placed orders",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "1w",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "3 people referred you ",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "8 Jun",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "450 people reposted on your post",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "Ded 19",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    TablerIcons.message,
                                    size: 14,
                                    color: Colors.green,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "450 people commented on your post",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  new Container(
                                    decoration: new BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        boxShadow: [
                                          new BoxShadow(
                                            blurRadius: 5.0,
                                            offset: const Offset(3.0, 0.0),
                                            color: Colors.grey,
                                          )
                                        ]),
                                    child: new CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/background.jpg',
                                      ),
                                      maxRadius: 24,
                                    ),
                                  ),
                                  new Positioned(
                                    left: 20.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  ),
                                  new Positioned(
                                    left: 40.0,
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              blurRadius: 5.0,
                                              offset: const Offset(3.0, 0.0),
                                              color: Colors.grey,
                                            )
                                          ]),
                                      child: new CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assets/background.jpg',
                                        ),
                                        maxRadius: 24,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              /*  CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/background.jpg',
                                ),
                                maxRadius: 24,
                              ), */
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "Oct 19",
                                    style: TextStyle(
                                      color: Color(0xff1d2f6f),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.favorite,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "Hotloaf Bakery replied to you",
                                      style: TextStyle(
                                        color: Color(0xff424242),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: InkWell(
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            color: Color(0xff5458f7),
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onTap: () {},
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ])),
      )),
    );
  }
}
