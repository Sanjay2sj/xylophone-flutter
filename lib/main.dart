
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());
 final audioPlayer=AudioPlayer();
class XylophoneApp extends StatelessWidget {
  void playSound(int sN){
  final player = AudioCache();
  audioPlayer.play(AssetSource("note$sN.wav"));
  }
  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
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
              buildKey(color: Colors.deepOrange, soundNumber: 1),
              buildKey(color: Colors.red, soundNumber: 2),
              buildKey(color: Colors.pinkAccent, soundNumber: 3),
              buildKey(color: Colors.pink, soundNumber: 4),
              buildKey(color: Colors.blueGrey, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

//void playSound() { }

