import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceImage = 1;
  int rightDiceImage = 1;

  void changeImageDice() {
    leftDiceImage = Random().nextInt(6) + 1;
    rightDiceImage = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeImageDice();
                });
              },
              child: Image.asset('images/dice$leftDiceImage.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeImageDice();
                });
              },
              child: Image.asset('images/dice$rightDiceImage.png'),
            ),
          ),
        ],
      ),
    );
  }
}

