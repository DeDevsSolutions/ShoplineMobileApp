import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartRing extends StatefulWidget {
  final String t1, t2;

  const PieChartRing({Key key, this.t1, this.t2}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartState();
}

class PieChartState extends State<PieChartRing> {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                          pieTouchData:
                              PieTouchData(touchCallback: (pieTouchResponse) {
                            setState(() {
                              if (pieTouchResponse.touchInput
                                      is FlLongPressEnd ||
                                  pieTouchResponse.touchInput is FlPanEnd) {
                                touchedIndex = -1;
                              } else {
                                touchedIndex =
                                    pieTouchResponse.touchedSectionIndex;
                              }
                            });
                          }),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          sectionsSpace: 10,
                          centerSpaceRadius: 95,
                          sections: showingSections()),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.t1,
                  style: TextStyle(
                    color: Color(0xff5d4c77),
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  widget.t2,
                  style: TextStyle(
                    color: Color(0xff5d4c77),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 20 : 14;
      final double radius = isTouched ? 25 : 15;
      switch (i) {
        case 0:
          return PieChartSectionData(
              color: Colors.red,
              value: 15,
              title: '40%',
              radius: radius,
              titleStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
              showTitle: false);
        case 1:
          return PieChartSectionData(
            color: const Color(0xffff8c39),
            value: 60,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff5458F6),
            value: 25,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }
}
