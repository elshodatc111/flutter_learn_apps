import 'dart:math';
import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftImageNumber = 6;
  var rightImageNumber = 1;

  void getRundom() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Bosss...",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      getRundom();
                    },
                    child: Image.asset('images/dice$leftImageNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      getRundom();
                    },
                    child: Image.asset('images/dice$rightImageNumber.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  getRundom();
                },
                child: Image.asset('images/R.png'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.pink,
    );
  }
}
