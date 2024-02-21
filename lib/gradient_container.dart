// this should become a widget bc you are making a custom widget
// you have to add something before {}
// classes can inherit features, data, and logic from other classes
// after typing statelesswidget, you need to add build method
// @override means you are overriding a method
// build method must accept a parameter (i.e., context)
// build method must return a widget
// Flutter automatically calls this build method for you when it renders the user interface
// by using return in the build method, you ensure that Flutter gets acccess to the widget or the combination of widgets you want to store in your own custom widget

// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// creating varibles. Variables are data containers
// Variables can be reassigned in the class below
// Thus, you neeed to remove const from const decoration: BoxDecoration(
// Variables have types. You can see it by hovering over the variable
// you can make the variable dynamic, which means Dart knows nothing about the type. so Dart accepts all types.
// e.g., var startAlignment;
// Widget build(context) {var startAlignment = Alignment.topLeft;
// this allows you to put dynamic on the variable startAlignment
// however, you should avoid this bc it leads to a bug
// you can define the type of a variable beforehand
// e.g., Alignment? startAlignment;
// after this, you should assign the value to the variable in the class.
// you can set final so the variable never changes its value
// that's a good practice to prevent somebody from overriding your variable values
// final and const are almost the same
// const tells Dart that the value stored in memory is a compiled time constant
// which means that it is locked in at the point of time this code is compiled
// you need to use final if the variable gets its value after the code is executed
// e.g., tartAlignment = getAlignment();
// Here, getAlignment() is a function you created that calculates the best alignment for you
// Since the variable cannot get its value until the function is executed, it needs final, not const
// Compiling comes before code execution. So, if you use const in this case, it won't work
// if you put const startAlignment = Alignment.topLeft;, you need to put const before BoxDecoration(
// because startAlignment used in BoxDecoration is not longer a variable that can be assigned
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// StatelessWidget vs StatefulWidget
// state is data that may change over time
// that should impact the rendered UK
// if the data changes, the rendered UI should change\
// most of your code here is stable but TextButton() for now, so you need to create StatefulWidget newly to separate it from StatelessWidget

class GradientContainer extends StatelessWidget {
  // your own widget classes, which are extended from StatelessWidget or other classes should have a constructor function added to them
  // you get one automatically, but if you want to add extra settings and configurations at the time when the widget is created, you have to add your own constructor function.
  // creating your own constructor function
  // special argument key needs to be forwarded to StatelessWidget
  // in other words, StatelessWidget wants a key argument
  // GradientContainer({key}) : super(key: key);
  // variable initialisation work
  // super() is calling constructor function of the parent class
  // the second key in super(key: key) refers to the key inside GradientContainer({key}) \
  // this is how the key named argument (curly brackets are named argument) in the child class is forwarded to the key argument in the parent class
  // GradientContainer({super.key}); is a shortcut
  // you can often use const before your own constructor function to tell Dart that this is a class that can be optimised and that can be stored in memory
  // when you use this class as value like GradientContainer(), you can add const before it

  const GradientContainer(this.color1, this.color2, {super.key});

  // adding another constructor function
  // this allows you to use predifined colors.
  // you can use GradientContainer.purple() whenever you use GradientContainer
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    // https://api.flutter.dev/flutter/widgets/Container-class.html

    return Container(
      decoration: BoxDecoration(
        // Generic Types are flexible types that work together with other types
        // LinearGradient(colors: ) takes List of Colors
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// one way to initialize the constructor parameter this.colors that is a List
// you need to include required if you use a named argument
// i.e., const GradientContainer({super.key, required this.colors});
// List is acutally mutable by default even if 'final' is set to it
// Hence, you need to remove const from const BoxDecoration(
// in main.dart, you need to pass a list of colors in this case
//   const GradientContainer(this.colors, {super.key});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     // https://api.flutter.dev/flutter/widgets/Container-class.html

//     return Container(
//       decoration: BoxDecoration(
//         // Generic Types are flexible types that work together with other types
//         // LinearGradient(colors: ) takes List of Colors
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello, Takuya!'),
//       ),
//     );
//   }
// }
