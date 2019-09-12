import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //brightness: Brightness.dark,
        primaryColor: Color(0xFF090B22),
        accentColor: Color(0xFF1C2033),
        scaffoldBackgroundColor: Color(0xFF090B22),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.teal),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('It is Work');
          },
        ),
      ),
    );
  }
}
