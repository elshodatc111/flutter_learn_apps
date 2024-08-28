import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class SaundAudio extends StatefulWidget {
  const SaundAudio({super.key});

  @override
  State<SaundAudio> createState() => _SaundAudioState();
}

class _SaundAudioState extends State<SaundAudio> {


  @override
  void play(int number) {
    AssetsAudioPlayer.newPlayer().open(
      Audio('assets/audio/number_$number.wav'),
      autoStart: true,
      showNotification: true,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          "Sound Audios",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(
              height: 450,
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  drawButton(color:Colors.blue, number: 0),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  drawButton(color:Colors.green, number: 1),
                  drawButton(color:Colors.greenAccent, number: 2),
                  drawButton(color:Colors.grey, number: 3),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  drawButton(color:Colors.orange, number: 4),
                  drawButton(color:Colors.pink, number: 5),
                  drawButton(color:Colors.deepOrange, number: 6),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  drawButton(color:Colors.lightGreenAccent, number: 7),
                  drawButton(color:Colors.lightBlueAccent, number: 8),
                  drawButton(color:Colors.purple, number: 9),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget> [
                  drawButton(color:Colors.teal, number: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawButton({required Color color,required int number}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            play(number);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color)),
          child: Text(
            '$number',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
