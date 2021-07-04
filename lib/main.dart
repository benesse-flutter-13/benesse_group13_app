import 'package:bmi_calculator/mypage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/mypage.dart';
import 'input_page.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: MyPage(),
    );
  }
}

// primaryColor: Color(0xFF0A0E21),
// scaffoldBackgroundColor: Color(0xFF0A0E21),
// accentColor: Colors.purple,
// textTheme: TextTheme(
//     body1: TextStyle(
//   color: Colors.white,
// ))
