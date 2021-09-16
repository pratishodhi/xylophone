import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    AssetsAudioPlayer.newPlayer().open(
      Audio('assets/note$soundNumber.wav'),
      autoPlay: true,
      showNotification: true,
    );
  //  final player = AudioCache();
   // player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color,int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        }, child: null,
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
              buildkey(color: Colors.redAccent, soundNumber: 1),
              buildkey(color: Colors.orangeAccent, soundNumber: 2),
              buildkey(color: Colors.yellowAccent, soundNumber: 3),
              buildkey(color: Colors.greenAccent, soundNumber: 4),
              buildkey(color: Colors.blueAccent, soundNumber: 5),
              buildkey(color: Colors.indigoAccent, soundNumber: 6),
              buildkey(color: Colors.purpleAccent, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
