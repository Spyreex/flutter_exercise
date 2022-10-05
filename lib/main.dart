import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Magic 8ball"),
        elevation: 0,
      ),
      body: MagicEightBall(),
    ),
  ));
}

class MagicEightBall extends StatefulWidget {
  const MagicEightBall({super.key});

  @override
  State<MagicEightBall> createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: TextButton(
        style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
        onPressed: (() {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        }),
        child: Image(
          image: AssetImage("images/ball$ballNumber.png"),
        ),
      ),
    ));
  }
}
