import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('How Container works'),
          ),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 10),
                color: Colors.black26,
                borderRadius:
                    const BorderRadius.all(const Radius.circular(100)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
