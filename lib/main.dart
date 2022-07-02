import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 49, 118),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 24, 97),
          title: Center(
            child: Text('Dice App'),
          ),
        ),
        body: diceBody(),
      ),
    );
  }
}

class diceBody extends StatefulWidget {
  @override
  State<diceBody> createState() => _diceBodyState();
}

class _diceBodyState extends State<diceBody> {
  int leftSide = 1;
  int rightSide = 1;

  void changeFace() {
    setState(() {
      leftSide = Random().nextInt(6) + 1;
      rightSide = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeFace();
              },
              child: Image(
                width: 200.0,
                image: AssetImage('images/dice$leftSide.png'),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeFace();
              },
              child: Image(
                width: 200.0,
                image: AssetImage('images/dice$rightSide.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
