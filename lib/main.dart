import 'package:bmi_calculator/screens/results.dart';
import 'package:flutter/material.dart';
import 'screens/input.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0XFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
