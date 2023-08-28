import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

Expanded buildButton(int fileNumber, Color color) => Expanded(
  child: TextButton(
    onPressed: () {
      final player = AudioPlayer();
      final file = AssetSource('note$fileNumber.wav');
      player.play(file);
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => color),
    ),
    child: const SizedBox(
      width: double.infinity,
    ),
  ),
);

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              buildButton(1, Colors.red),
              buildButton(2, Colors.orange),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.green),
              buildButton(5, Colors.lightGreen),
              buildButton(6, Colors.blue),
              buildButton(7, Colors.purple),
            ]
          ),
        ),
      ),
    );
  }
}