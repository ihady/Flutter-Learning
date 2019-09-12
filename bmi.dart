import 'package:flutter/material.dart';
import 'bmi_input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090B22),
        accentColor: Color(0xFF1C2033),
        scaffoldBackgroundColor: Color(0xFF090B22),
      ),
      home: InputPage(),
    );
  }
}
