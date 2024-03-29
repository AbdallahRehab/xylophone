import 'package:flutter/material.dart';

//import 'package:english_words/english_words.dart';
//Text(nouns.last)
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded bulidKey({Color color,int soundNumber}){
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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

                    bulidKey(color: Colors.red,soundNumber:1),
                    bulidKey(color: Colors.orange,soundNumber:2),
                    bulidKey(color: Colors.yellow,soundNumber:3),
                    bulidKey(color: Colors.green,soundNumber:4),
                    bulidKey(color: Colors.teal,soundNumber:5),
                    bulidKey(color: Colors.blue,soundNumber:6),
                    bulidKey(color: Colors.purple,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
