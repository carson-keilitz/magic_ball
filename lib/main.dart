import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[600],
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              print(ballNumber);
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Ball(),
    );
  }
}
