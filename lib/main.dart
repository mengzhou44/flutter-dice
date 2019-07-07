import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//add some comment
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png'))),
              SizedBox(width: 20),
              Expanded(
                  child: FlatButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png'))),
            ]),
          ]),
    );
  }
}
