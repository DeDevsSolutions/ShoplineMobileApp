import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  final String g1, g2, g3, g4, g5, g6;

  const LineChartSample2(
      {Key key, this.g1, this.g2, this.g3, this.g4, this.g5, this.g6})
      : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  Color colorCustom = Color(0xff5458F6);

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  List<Color> greyGrad = [
    Colors.grey.shade50,
    Colors.grey,
  ];

  List<Color> redGrad = [
    Colors.red.shade50,
    Colors.red,
  ];

  List<Color> purpleGrad = [
    Colors.purple.shade50,
    const Color(0xff5458F6),
  ];

  List<Color> orangeGrad = [
    Colors.orange.shade50,
    const Color(0xffff8c39),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.g1,
                        style: TextStyle(
                          color: Color(0xff5d4c77),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 20),
                        child: LineChart(
                          mainData(gradientColors),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '256k',
                          style: TextStyle(
                            color: Color(0xff5d4c77),
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          '▼ ' '20%',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.g2,
                        style: TextStyle(
                          color: Color(0xff5d4c77),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 20),
                        child: LineChart(
                          mainData(greyGrad),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '32',
                          style: TextStyle(
                            color: Color(0xff5d4c77),
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          '▲ ' + '22%',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.g3,
                        style: TextStyle(
                          color: Color(0xff5d4c77),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 20),
                        child: LineChart(
                          mainData(greyGrad),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1.2k',
                          style: TextStyle(
                            color: Color(0xff5d4c77),
                            fontSize: 23,
                          ),
                        ),
                        /*Text(
                          '▼ ' '150%',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),*/
                        Text(
                          '▲ ' + '150%',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.g4,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 20),
                        child: LineChart(
                          mainData(redGrad),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1M',
                          style: TextStyle(
                            color: Color(0xff5d4c77),
                            fontSize: 23,
                          ),
                        ),
                        Flexible(
                            child: Text(
                          '▲ ' + '4%',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.g5,
                        style: TextStyle(
                          color: colorCustom,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 20),
                        child: LineChart(
                          mainData(purpleGrad),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '234',
                          style: TextStyle(
                            color: Color(0xff5d4c77),
                            fontSize: 23,
                          ),
                        ),
                        /*Text(
                          '▼ ' '150%',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),*/
                        Text(
                          '▲ ' + '15%',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                margin: const EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.g6,
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 20),
                        child: LineChart(
                          mainData(orangeGrad),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            color: Color(0xff5d4c77),
                            fontSize: 23,
                          ),
                        ),
                        /*Text(
                          '▲ ' + '4%',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),*/
                        Text(
                          '▼ ' '13%',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

// constructor to capture gradient map from method
  LineChartData mainData(List<Color> grad) {
    return LineChartData(
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: grad,
          gradientFrom: Offset(1, 1),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradientFrom: Offset(1, 1),
            colors: grad.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}
