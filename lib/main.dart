import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 0;
  void ChangeBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Magic-Ball')),
            backgroundColor: Colors.teal,
          ),
          body: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ChangeBallNumber();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
