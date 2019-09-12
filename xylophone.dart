import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playKey(color: Colors.red[50], soundNumber: 1),
              playKey(color: Colors.red[100], soundNumber: 2),
              playKey(color: Colors.red[200], soundNumber: 3),
              playKey(color: Colors.red[300], soundNumber: 4),
              playKey(color: Colors.red[400], soundNumber: 5),
              playKey(color: Colors.red[700], soundNumber: 6),
              playKey(color: Colors.red[900], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
