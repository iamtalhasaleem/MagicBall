import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Text('Magic Ball'),
            backgroundColor: Colors.purple[400],
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  MagicBall({Key key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

int changeBallNumber = 1;

class _MagicBallState extends State<MagicBall> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                changeBallNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$changeBallNumber.png'),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Ask me anything',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
