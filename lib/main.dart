import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lb = 1;
  int rb = 1;
  void diceFace() {
    setState(() {
      lb = Random().nextInt(6) + 1;
      rb = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  diceFace();
                },
                child: Image.asset("images/dice$lb.png"),
              ),
            ),
            Expanded(
                child: FlatButton(
              onPressed: () {
                diceFace();
              },
              child: Image.asset("images/dice$rb.png"),
            ))
          ],
        ),
      ),
    );
  }
}
