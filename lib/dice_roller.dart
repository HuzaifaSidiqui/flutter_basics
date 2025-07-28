import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        SizedBox(height: 40),
        ElevatedButton(
          // onPressed: () {},// anonymous function
          onPressed: rollDice, // preferred approach
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 45, 4, 65),
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
