import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shopline/screens/profile/Feed_User_Profile.dart';
import 'package:shopline/screens/profile/tabs/catalog_tab.dart';
import 'package:shopline/screens/profile/tabs/review_tab.dart';

import 'Edit_Profile.dart';
import 'Help.dart';

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

  final List<Tab> tabs = <Tab>[
    new Tab(text: "Catalog"),
    new Tab(text: "Reviews"),
    new Tab(text: "Offers")
  ];

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

    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xffF1F1F1),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(TablerIcons.align_right),
            onPressed: () => _globalKey.currentState.openEndDrawer(),
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff5d4c77), //change your color here
        ),
        title: Text(
          '  Profile',
          style: TextStyle(
            color: Color(0xff5d4c77),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: const EdgeInsets.all(10),
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
                                  backgroundImage:
                                      AssetImage('assets/background.jpg'),
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
                                TablerIcons.mood_sad,
                                color: Colors.red,
                                size: 20.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(5, 10, 5, 10),
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
                                  TablerIcons.link,
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
                      margin: const EdgeInsets.all(10),
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
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: TabBar(
                    labelStyle: TextStyle(fontSize: 15.0),
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: new BubbleTabIndicator(
                      indicatorHeight: 40.0,
                      indicatorColor: Color(0xffff8c39),
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    ),
                    tabs: tabs,
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CatalogTab(),
              ReviewTab(),
              new Card(),
            ],
          ),
        ),
      ),
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
                          TablerIcons.ad,
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
                          TablerIcons.share,
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
                          TablerIcons.help,
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
                          TablerIcons.user_plus,
                          color: colorCustom,
                        ),
                        title: Text('Invite friends'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FeedUserProfile()),
                          );
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
                      TablerIcons.logout,
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
