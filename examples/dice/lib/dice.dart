import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 2;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('DICE'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'image/dice$leftDice.png',
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Image.asset(
                    'image/dice$rightDice.png',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orangeAccent),
              ),
              child: Icon(
                Icons.play_arrow,
                size: 35.0,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text('Left Dice: $leftDice, Right Dice: $rightDice'),
                    backgroundColor: Colors.teal,
                    duration: Duration(milliseconds: 1000),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
