import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopline/screens/analytics/tabs/pie_chart.dart';

import 'graph_data.dart';

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(10), children: <Widget>[
      PieChartRing(
        t1: '1M+',
        t2: 'Impressions',
      ),
      LineChartSample2(
        g1: 'Reach',
        g2: 'Followers',
        g3: 'Referrals',
        g4: 'Likes',
        g5: 'Comments',
        g6: 'Reposts',
      )
    ]);
  }
}
