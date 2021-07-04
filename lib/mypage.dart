import 'package:flutter/material.dart';
import 'package:bmi_calculator/selected_industry.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ようこそ！　ColleXPassへ'),
        ),
        body: Column(
          children: [
            Container(
                width: double.infinity,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    Text(
                      'id : 123456789　進研　太郎さんのマイページ',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Icon(
                      Icons.male,
                    )
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Image.network(
                      'https://www.benesse-i-career.co.jp/gps_academic/img/footer_log_gps_a.png',
                      height: 65.0,
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Multiplication_Sign.svg/768px-Multiplication_Sign.svg.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    Image.network(
                      'https://www.kaichi.ed.jp/archives/001/201801/large-5a67371656edf.png',
                      height: 65.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'ColleXPass',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 70.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                              color: Colors.black38,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0)
                        ]),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10.0),
                  SizedBox(
                    height: 70.0,
                    width: 400.0,
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "将来を見つけよう",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedIndustryPage()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                    width: 400.0,
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "お気に入り一覧へ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
