import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  // we need to define a constructor function other than the default constructor
  //so that we may be able to pass the required value of parent constructor
  //which is the statelessWidget constructor as it requires a named parameter
  //which is key. so we use a constructor and pass the value to parent constructor
  //by adding the super key word

  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 61, 121, 5),
            Color.fromARGB(255, 18, 97, 195),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
