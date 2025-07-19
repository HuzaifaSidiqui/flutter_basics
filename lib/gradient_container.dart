import 'package:flutter/material.dart';
// import 'package:first_project/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // we need to define a constructor function other than the default constructor
  //so that we may be able to pass the required value of parent constructor
  //which is the statelessWidget constructor as it requires a named parameter
  //which is key. so we use a constructor and pass the value to parent constructor
  //by adding the super key word

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice() {
    // ...
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-1.png', width: 200),
            ElevatedButton(
              // onPressed: () {},// anonymous function
              onPressed: rollDice, // preferred approach
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: Text("Roll Dice"),
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
