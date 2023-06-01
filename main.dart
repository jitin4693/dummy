import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 95, 2, 72),
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: const Color.fromARGB(255, 49, 2, 37),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$diceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
