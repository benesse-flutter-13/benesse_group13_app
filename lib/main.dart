import 'package:colleXpass/mypage.dart';
import 'package:flutter/material.dart';


void main() => runApp(CollePass());

class CollePass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[600],
        accentColor: Colors.blue,
        backgroundColor: Colors.blue,

        fontFamily: "NotoSansJP",
      ),
      home: MyPage(),
    );
  }
}





