import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  FlatButton buildKey({Color color, int soundNumber, double minWidth}) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: Colors.red),
      ),
      minWidth: minWidth,
      height: 50,
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildKey(color: Colors.red, soundNumber: 1, minWidth: 350),
                SizedBox(
                  height: 48,
                ),
                buildKey(color: Colors.orange, soundNumber: 2, minWidth: 330),
                SizedBox(
                  height: 48,
                ),
                buildKey(color: Colors.blue, soundNumber: 3, minWidth: 300),
                SizedBox(
                  height: 48,
                ),
                buildKey(color: Colors.teal, soundNumber: 4, minWidth: 270),
                SizedBox(
                  height: 48,
                ),
                buildKey(color: Colors.purple, soundNumber: 5, minWidth: 240),
                SizedBox(
                  height: 48,
                ),
                buildKey(color: Colors.yellow, soundNumber: 6, minWidth: 210),
                SizedBox(
                  height: 48,
                ),
                buildKey(color: Colors.indigo, soundNumber: 7, minWidth: 180),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
