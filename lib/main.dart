import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildkey({required Color color, required int s}) {
    return Expanded(
      flex: 3,
      child: TextButton(
        onPressed: () {
          // final player = AudioCache();
          // ignore: unnecessary_statements
          playsound(s);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Row(
              children: const [
                Icon(Icons.music_video_sharp),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'XYLOPHONE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.black),
                ),
                buildkey(color: Colors.red, s: 1),
                buildkey(color: Colors.blue, s: 2),
                buildkey(color: Colors.green, s: 3),
                buildkey(color: Colors.yellow, s: 4),
                buildkey(color: Colors.orange, s: 5),
                buildkey(color: Colors.pink, s: 6),
                buildkey(color: Colors.brown, s: 7),
                Expanded(
                  flex: 1,
                   child: Container(color: Colors.black),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
