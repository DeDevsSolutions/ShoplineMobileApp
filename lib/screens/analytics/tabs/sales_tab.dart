import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopline/screens/analytics/tabs/pie_chart.dart';

import 'graph_data.dart';

class SalesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(10), children: <Widget>[
      PieChartRing(
        t1: '56',
        t2: 'Orders',
      ),
      LineChartSample2(
        g1: 'Catalogue visits',
        g2: 'Listings',
        g3: 'Highest Sales',
        g4: 'Least Sales',
        g5: 'Ratings',
        g6: 'Reviews',
      )
    ]);
  }
}
