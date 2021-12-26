import 'package:flutter/material.dart';
import 'screens/inpt_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF090F32),),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}

