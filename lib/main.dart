import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: const Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {
              changeNumber();
            },
            child: Image.asset(
              'images/ball$ballNumber.png',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            changeNumber();
          },
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
          ),
          child: const Text(
            'Ask Now!',
          ),
        ),
      ],
    );
  }
}
