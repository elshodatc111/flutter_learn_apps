import 'package:dicess/screen/dice_app.dart';
import 'package:dicess/screen/saund_audio.dart';
import 'package:dicess/screen/video_player.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DiceApp(),
                          ),
                        );
                      },
                      child: const Text('Narda'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SaundAudio(),
                          ),
                        );
                      },
                      child: const Text('Number'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => VideoPlayer(),
                          ),
                        );
                      },
                      child: const Text('Video Player'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
