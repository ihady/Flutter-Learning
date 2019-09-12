import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('How Row-Column works'),
          ),
          body: Center(
            child: Container(),
          ),
        ),
      ),
    );
  }
}
