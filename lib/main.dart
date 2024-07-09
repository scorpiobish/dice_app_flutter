import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Center(child: const Text('Dice App!')), surfaceTintColor: Colors.yellow,
        ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2164831048.
      body: DicePage(),),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(children: <Widget>[
        Expanded(flex: 1,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: () { 1; },
              child: Image.asset('images/dice1.png'),
              
              ),
            ),
          ),
        ],
        Expanded(flex: 1,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage('images/dice1.png'),
            ),
          ),
        ),
      ]),
    );
  }
  

}