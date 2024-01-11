import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Dice Game"),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset("Image/dice$leftDice.png")),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Image.asset("Image/dice$rightDice.png")),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(50, 50),
                backgroundColor: Colors.blue.shade200,
              ),
              child: Icon(Icons.play_arrow, color: Colors.black),
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
