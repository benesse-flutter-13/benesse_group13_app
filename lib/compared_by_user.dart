import 'dart:ui';
import 'package:colleXpass/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ComparedByUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.local_hospital,
                    color: Colors.black,
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(
                        '医師   A さん',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 40.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Text(
                          '55',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.arrow_circle_down_sharp,
                        ),
                        title: Text(
                          '東京都　B高校',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                    // ElevatedButton.icon(
                    //   icon: const Icon(
                    //     Icons.tag_faces,
                    //     color: Colors.white,
                    //   ),
                    //   label: const Text(
                    //     'こんな参考書使ってました',
                    //     style: TextStyle(
                    //       fontSize: 10.0,
                    //     ),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.lightGreen,
                    //     onPrimary: Colors.white,
                    //   ),
                    //   onPressed: () {},
                    // ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.arrow_circle_down_sharp,
                        ),
                        title: Text(
                          'C大学　医学部',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.arrow_circle_down_sharp,
                        ),
                        title: Text(
                          '研修医',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                  ],
                ),
              ),
              LineChartSample2(),
              SizedBox(
                height: 15.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                ),
                label: const Text(
                  '苦手単元はClassiで確認',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//chart
class LineChartSample2 extends StatefulWidget {
  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  String choose = 'all';
  LineChart data_take() {
    switch (choose) {
      case 'all':
        return LineChart(
          avgData(colorAll, oldUserAll, userAll),
        );
        break;
      case 'eng':
        return LineChart(
          avgData(colorEng, oldUserEng, userEng),
        );
        break;
      case 'math':
        print('実行');
        return LineChart(
          avgData(colorMath, oldUserMath, userMath),
        );
        break;
      case 'jap':
        return LineChart(
          avgData(colorJap, oldUserJap, userJap),
        );
        break;
    }
    return LineChart(
      avgData(colorAll, oldUserAll, userAll),
    );
  }

  List<FlSpot> oldUserAll = [
    FlSpot(0, 52.5),
    FlSpot(1, 53),
    FlSpot(2, 52.3),
    FlSpot(3, 54),
    FlSpot(4, 53),
    FlSpot(5, 54),
    FlSpot(6, 55),
    FlSpot(7, 56),
    FlSpot(8, 57),
  ];

  List<FlSpot> oldUserEng = [
    FlSpot(0, 53.5),
    FlSpot(1, 54),
    FlSpot(2, 53.3),
    FlSpot(3, 56),
    FlSpot(4, 54),
    FlSpot(5, 57),
    FlSpot(6, 55),
    FlSpot(7, 56),
    FlSpot(8, 58),
  ];

  List<FlSpot> oldUserMath = [
    FlSpot(0, 51.5),
    FlSpot(1, 52),
    FlSpot(2, 52.3),
    FlSpot(3, 54),
    FlSpot(4, 53.5),
    FlSpot(5, 54),
    FlSpot(6, 55),
    FlSpot(7, 56),
    FlSpot(8, 55.8),
  ];

  List<FlSpot> oldUserJap = [
    FlSpot(0, 54.5),
    FlSpot(1, 52),
    FlSpot(2, 55.3),
    FlSpot(3, 55),
    FlSpot(4, 54.6),
    FlSpot(5, 56),
    FlSpot(6, 56),
    FlSpot(7, 57),
    FlSpot(8, 57.1),
  ];

  List<FlSpot> userAll = [
    FlSpot(0, 50.5),
    FlSpot(1, 52),
    FlSpot(2, 52.3),
    FlSpot(3, 54),
  ];

  List<FlSpot> userEng = [
    FlSpot(0, 53.5),
    FlSpot(1, 53),
    FlSpot(2, 51.3),
    FlSpot(3, 54),
  ];

  List<FlSpot> userMath = [
    FlSpot(0, 52.5),
    FlSpot(1, 53),
    FlSpot(2, 53.3),
    FlSpot(3, 54.2),
  ];

  List<FlSpot> userJap = [
    FlSpot(0, 51.5),
    FlSpot(1, 54),
    FlSpot(2, 53.3),
    FlSpot(3, 54),
  ];

  List<Color> colorAll = [
    Colors.blueGrey,
    Colors.grey,
  ];
  List<Color> colorEng = [
    Colors.deepOrange,
    Colors.deepOrangeAccent,
  ];
  List<Color> colorMath = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  List<Color> colorJap = [
    Colors.red,
    Colors.redAccent,
  ];
  List<Color> colorBlack = [
    Colors.black45,
    Colors.black87,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton.icon(
              icon: const Icon(
                Icons.tag_faces,
                color: Colors.white,
              ),
              label: const Text('総合'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('総合');
                setState(() {
                  choose = 'all';
                });
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.tag_faces,
                color: Colors.white,
              ),
              label: const Text('英語'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('英語');
                setState(() {
                  choose = 'eng';
                });
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.tag_faces,
                color: Colors.white,
              ),
              label: const Text('数学'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('数学');
                setState(() {
                  choose = 'math';
                });
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.tag_faces,
                color: Colors.white,
              ),
              label: const Text('国語'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                print('国語');
                setState(() {
                  choose = 'jap';
                });
              },
            ),
          ],
        ),
        Container(
          child: Center(
            child: Text(
              '破線:Aさん  実線:あなた',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.70,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 18.0, left: 12.0, top: 24, bottom: 12),
                  child: data_take(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      backgroundColor: Colors.white70,
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '4月';
              case 1:
                return '8月\n高校1年';
              case 2:
                return '12月';
              case 3:
                return '4月';
              case 4:
                return '8月\n高校2年';
              case 5:
                return '12月';
              case 6:
                return '4月';
              case 7:
                return '8月\n高校3年';
              case 8:
                return '12月';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 45:
                return '45';
              case 50:
                return '50';
              case 55:
                return '55';
              case 60:
                return '60';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 8,
      minY: 45,
      maxY: 60,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 50),
            FlSpot(2.6, 51),
            FlSpot(4.9, 51.3),
            FlSpot(6.8, 52),
            FlSpot(8, 53),
            FlSpot(9.5, 55),
            FlSpot(11, 57),
          ],
          isCurved: false,
          colors: colorMath,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: colorMath.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData(
      List<Color> colorList, List<FlSpot> oldData, List<FlSpot> userData) {
    return LineChartData(
      backgroundColor: Colors.white70,
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '4月';
              case 1:
                return '8月\n高校1年';
              case 2:
                return '12月';
              case 3:
                return '4月';
              case 4:
                return '8月\n高校2年';
              case 5:
                return '12月';
              case 6:
                return '4月';
              case 7:
                return '8月\n高校3年';
              case 8:
                return '12月';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 45:
                return '45';
              case 50:
                return '50';
              case 55:
                return '55';
              case 60:
                return '60';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 8,
      minY: 45,
      maxY: 60,
      lineBarsData: [
        LineChartBarData(
          spots: oldData,
          isCurved: false,
          dashArray: [5, 10],
          colors: colorBlack,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: colorBlack.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
        LineChartBarData(
          spots: userData,
          isCurved: false,
          colors: colorList,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: colorList.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}
