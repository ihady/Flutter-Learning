import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('Course Create ur Card'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/hady2018.jpg'),
                radius: 50,
              ),
              Text(
                'Hady Shendy',
                style: TextStyle(
                    fontFamily: 'Acme',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'PROJECT MANAGER PMPer',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 25,
                    color: Colors.teal[100],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                  ),
                  title: Text(
                    '+971506772874',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                  ),
                  title: Text(
                    'hadyshendy@gmail.com',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
