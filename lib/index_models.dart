import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';


class IndexModels extends StatelessWidget {
  List RollModels=
      [
        ModelData("薬剤者", "A",
            Image.asset("images/pharmasist.jpg",
                  height: 100,
                  width: 100,)
        ),
        ModelData("医者", "B",
          Image.asset("images/doctor.jpg",
          height: 100,
          width: 100,)
        ),
        ModelData("薬剤師","C",
          Image.asset("images/pharmasist.jpg",
          height: 100,
          width: 100,)
        ),
        ModelData("医療事務", "D",
          Image.asset("images/computer_doctor_man.png",
          height: 100,
          width: 100,)
        ),
        ModelData("test", "test",
          Image.asset("images/default_user.jpg",
          height: 100,
          width: 100,)
        ),
        ModelData("test", "test",
            Image.asset("images/default_user.jpg",
              height: 100,
              width: 100,)
        ),
        ModelData("test", "test",
            Image.asset("images/default_user.jpg",
              height: 100,
              width: 100,)
        ),
        ModelData("test", "test",
            Image.asset("images/default_user.jpg",
              height: 100,
              width: 100,)
        ),
      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColleXpass"),
      ),

      //文章部分
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:12.0,right: 12.0,left: 12.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("あなたに近い学力の　", style: TextStyle(
                        fontSize: 18,
                      ),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text( "医療", style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      )),
                      Text("　業界の人の職業は…", style: TextStyle(
                        fontSize: 22,
                      ),)
                    ],
                  ),
                ],
              ),
            ),


            //円グラフ部分
            PieChartSample2(),

            // それぞれの人を移す部分
            Container(

              child: Column(
                children: [
                  Text("あなたに近いロールモデル一覧",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Indicator(
                      color: Colors.greenAccent,
                      text: "偏差値±3",
                      isSquare: true,
                    ),
                    Indicator(
                      color: Colors.blue,
                      text: "偏差値>+3",
                      isSquare: true,
                    ),
                    Indicator(
                      color: Colors.redAccent,
                      text: "偏差値<-3",
                      isSquare: true,
                    ),

                  ],)
                ],
            )),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:RollModels.length,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: Container(
                        width:80,
                        height:100,
                        child: RollModels[index].image,
                      ) ,

                      trailing: Text("詳細"),
                      title: Text("${RollModels[index].jobs}　${RollModels[index].name}"),
                      tileColor: RollBackgroundColor(index),
                      onTap:() {
                        //　ページ遷移部分
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => MovieListViewDetails(movieName: movies.elementAt(index),)));
                      },
                    ),
                  );
                },
            )




          ],
        ),
      )
    );
  }
}

class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex;
  List JobModels=
  [
    IndustryData("医療事務", 15.0),
    IndustryData("臨床検査技師", 8.0),
    IndustryData("看護師", 8.0 ),
    IndustryData("薬剤師",7.0 ),
    IndustryData("医師",5.0 ),
    IndustryData("その他", 57)

  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Container(
        child: Row(
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                        setState(() {
                          final desiredTouch = pieTouchResponse.touchInput is! PointerExitEvent &&
                              pieTouchResponse.touchInput is! PointerUpEvent;
                          if (desiredTouch && pieTouchResponse.touchedSection != null) {
                            touchedIndex = pieTouchResponse.touchedSection.touchedSectionIndex;
                          } else {
                            touchedIndex = -1;
                          }
                        });
                      }),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 40,
                      startDegreeOffset: 270,
                      sections: showingSections()),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Indicator(
                  color: Color(0xff0293ee),
                  text: JobModels[0].industry,
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Color(0xfff8b250),
                  text: JobModels[1].industry,
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Color(0xff845bef),
                  text:  JobModels[2].industry,
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Color(0xff13d38e),
                  text:  JobModels[3].industry,
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.redAccent,
                  text:  JobModels[4].industry,
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.lightGreenAccent,
                  text:  JobModels[5].industry,
                  isSquare: true,
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
            const SizedBox(
              width: 28,
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 28 : 18;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: JobModels[i].percentage,
            title: '${JobModels[i].percentage}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xff000000)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: JobModels[i].percentage,
            title: '${JobModels[i].percentage}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xff000000)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: JobModels[i].percentage,
            title: '${JobModels[i].percentage}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xff000000)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: JobModels[i].percentage,
            title: '${JobModels[i].percentage}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xff000000)),
          );
        case 4:
          return PieChartSectionData(
            color: Colors.redAccent,
            value: JobModels[i].percentage,
            title: '${JobModels[i].percentage}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xff000000)),
          );
        case 5:
          return PieChartSectionData(
            color: Colors.lightGreenAccent,
            value: JobModels[i].percentage,
            title: '${JobModels[i].percentage}%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xff000000)),
          );
        default:
          return null;
      }
    });
  }
}

class IndustryData{
  String industry;
  double percentage;

  IndustryData(this.industry, this.percentage);
}

class ModelData{
  String jobs;
  String name;
  Image image;

  ModelData(this.jobs, this.name, this.image);
}

Color RollBackgroundColor(int index){
  if (index<1){
    return Colors.greenAccent;
  }else if(index>=1 && index<3) {
    return Colors.blue;
  }else if(index >= 3 && index % 2 ==1){
    return Colors.redAccent;
  }else{
    return Colors.blue;
  }
}

