// import 'package:first_project/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:first_project/styled_text.dart';
import 'dart:math';

final randomizer = Random();

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});
  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  final randomizer = Random();
  var currentDiceRoll = 1;

  // Define background color pairs
  final List<List<Color>> gradientColors = [
    [Colors.purple, Colors.deepPurple],
    [Colors.blue, Colors.lightBlueAccent],
    [Colors.green, Colors.teal],
    [Colors.red, Colors.orange],
    [Colors.indigo, Colors.cyan],
    [Colors.brown, Colors.grey],
  ];

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorPair = gradientColors[currentDiceRoll - 1];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorPair,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 45, 4, 65),
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   // we need to define a constructor function other than the default constructor
//   //so that we may be able to pass the required value of parent constructor
//   //which is the statelessWidget constructor as it requires a named parameter
//   //which is key. so we use a constructor and pass the value to parent constructor
//   //by adding the super key word

//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(child: StyledText("Hello World")),
//     );
//   }
// }
