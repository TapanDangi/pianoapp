import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded myButton({required Color color, required int action}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(action);
        },
        child: null,
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Piano'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(color: Colors.brown, action: 1),
            myButton(color: Colors.green, action: 2),
            myButton(color: Colors.red, action: 3),
            myButton(color: Colors.purple, action: 4),
            myButton(color: Colors.orange, action: 5),
            myButton(color: Colors.teal, action: 6),
            myButton(color: Colors.yellow, action: 7),
          ],
        ),
      ),
    );
  }
}
