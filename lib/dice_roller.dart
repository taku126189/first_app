import 'package:flutter/material.dart';

// import this provided by Dart in order to use Random()
import 'dart:math';

// this variable stores a random object
// this is needed to make the code efficient
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  // you should add a constructor function here
  // to accept this named key parameter and forward it to the super class
  // this is the same as StatelessWidget
  // State is data that may chnage overtime and thus changes the rendered UI so you do not add const within _DiceRollerState class
  // however, the DiceRoller widget will be kept constant
  // so you need to add const to DiceRoller({super.key});
  // however, you must not add const to the state object _DiceRollerState because it can change
  const DiceRoller({super.key});
  // insterad of build method in StatelessWidget, you need to create createState method
  // angle brackets are used to inform Dart which kind of state will be managed here
  // state is data that may change overtime
  // so the value that is passed into the angle brackets should be DiceRoller
  @override
  State<DiceRoller> createState() {
    // executing the constructor function
    // you did not add a constructor function but Dart automatically creates it if you do not have one
    // so here, the constructor function of _DiceRollerState is executed
    return _DiceRollerState();
  }
}

// you must add another class that typically starts with underscore and ends with State
// underscore means private and it is only used in this file
// this state class is meant to be used only for this DicerRollerWidget internally
class _DiceRollerState extends State<DiceRoller> {
  // upon adding this variable in this class, you need to remove const
  // from const GradientContainer(this.color1, this.color2, {super.key});
  // and const GradientContainer.purple({super.key})
  // because variables change
  // var activeDiceImage =
  //     '/Users/takuyasaka/flutterprojects/first_app/assets/images/dice-2.png';

  var currentDiceRoll = 2;

  // onPressed accepts void function
  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1; // 0 to 5 -> 1 to 6
    // The code below is not optimised
    // every time rollDice function is executed, a new random object is created and stored in memory
    // then old random number that was created before will be thrown away
    // while this process does not occupy the memory, there is some redudancy of creation and deletion in memory

    // setState(() {
    //   currentDiceRoll = Random().nextInt(6) + 1;

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage =
      //     '/Users/takuyasaka/flutterprojects/first_app/assets/images/dice-$diceRoll.png';
    });
  }

  // you need to get Flutter to re-execute this build method
  // to pick up any changes to activeDiceImage
  // you need to understand that in any programming language,
  // changing the value of a variable does not re-excute the code in which the variable is used
  // setState function is for resolving this, telling Flutter to re-execute the build function of this state _DiceRollerState
  // Then, it goes to the app UI and update it
  // anonymous function is used inside of it

  // you need build method in here
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          '/Users/takuyasaka/flutterprojects/first_app/assets/images/dice-$currentDiceRoll.png',
          width: 100,
        ),
        // onPressed accepts Function or null
        // Functions are objects/values
        // Defining a Function
        // void start() {}
        // Calling a Function
        // start();
        // Using a Function as a Value
        // TextButton(onPressed: start)
        // () {} is an anonymous function
        // onPressed: () {}

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 25)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
