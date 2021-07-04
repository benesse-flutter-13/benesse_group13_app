import 'package:flutter/material.dart';
import 'package:colleXpass/selected_industry.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text('ようこそ！ ColleXPassへ！'),
          backgroundColor: Colors.blue[700],
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
                color: Colors.grey[600],
                child: Column(
                  children: [
                    Image.network(
                      'https://www.benesse-i-career.co.jp/gps_academic/img/footer_log_gps_a.png',
                      height: 50.0,
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Multiplication_Sign.svg/768px-Multiplication_Sign.svg.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    Container(
                      height:50,
                      color: Colors.white,
                      child:Image.network(
                        'https://www.kaichi.ed.jp/archives/001/201801/large-5a67371656edf.png',
                        height: 50.0,
                      ),
                    )

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                  child: Image.asset("images/logo.png")
                  // Text(
                  //   'ColleXPass',
                  //   style: TextStyle(
                  //       decoration: TextDecoration.underline,
                  //       color: Colors.black,
                  //       fontSize: 70.0,
                  //       fontStyle: FontStyle.italic,
                  //       fontWeight: FontWeight.bold,
                  //       shadows: <Shadow>[
                  //         Shadow(
                  //             color: Colors.black38,
                  //             offset: Offset(3.0, 3.0),
                  //             blurRadius: 3.0)
                  //       ]),
                  // ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 400.0,
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "将来を見つけてみよう",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: "NotoSansJP"
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
                    height: 50.0,
                    width: 400.0,
                    child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        "お気に入り一覧へ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: "NotoSansJP"
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
