import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Center(child: Text('Dice App!')),
          surfaceTintColor: Colors.yellow,
        ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2164831048.
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1698576052.
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    rollDice();
                  }, //
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                )),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                // onPressed: () {
                //   // setState(() {
                //   rightDiceNumber = 4;
                // });
                // },
                onPressed: () {
                  rollDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
