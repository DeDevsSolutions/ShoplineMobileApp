import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:shopline/screens/order/tabs/customers_tab.dart';
import 'package:shopline/screens/order/tabs/you_tab.dart';


class OrderPage extends StatelessWidget {
  final _globalKey = GlobalKey<ScaffoldState>();
  final List<Tab> tabs = <Tab>[
    new Tab(text: "From Customers"),
    new Tab(text: "You")
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
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff5d4c77), //change your color here
        ),
        title: Text(
          "Orders",
          style: TextStyle(
            color: Color(0xff5d4c77),
            fontSize: 18,
            fontFamily: "Poppins",
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
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
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
              CustomersTab(),
              YouTab(),
            ],
          ),
        ),
      ),
    );
  }
}
