import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // creating your own constructor function
  // in main.dart file, you want to pass text value to this class because it is now fixed with 'Hello World'
  // if you want to pass the text value to the constructor function, you need to accept it in the constructor function
  // const StyledText({super.key}); means you are already accepting the key argument
  // you can add more via named arguments by adding a comma after super.key, or via positional arguments by adding before {super.key}
  // const StyledText(String text, {super.key}); you need to specify the data type of text; otherwise it becomes dynamic
  // you need to add text in Text() to link
  // if you just use text instead of 'Hello World', you get error saying "undefined name 'text'""
  // thus, you need to add a class variable (property) to the class
  // const StyledText(String text, {super.key}) : outputText = text;
  // String outputText;
  // Widget build(BuildContext context) {
  // return const Text(
  // outputText,
  // style: TextStyle(
  // color: Colors.red,
  // fontSize: 25,
  // ),
  // );
  // }
  // first outputText refers to the text variable (class variable)
  // second text refers to the text argument in the constructor function
  // however, since this is really common, you can use 'this' for the shortcut

  const StyledText(this.text, {super.key});

  // adding a class variable inside the class to connect text in the constructor function and text in build method
  // however, adding a class variable is not enough to use text in the build method
  // in order to set the text variable to the value you receive as an argument in StyledText,there are two main ways
  // you can add : like this
  // const StyledText(String text, {super.key}) : outputText = text;
  // or you can write like this
  // const StyledText(this.text, {super.key});
  // this is a shortcut that looks for variable called 'text' and set it equal to the argument value that is received
  // 'this' is a keyword provided by Dart
  // it wants to access to the text variable defined in this class
  // you need to remove const from const StyledText(this.text, {super.key}); because the text variable is a variable that can change
  // you can use final here because the text variable is used only for storing its value to this.text in the argument of the constructor function
  // which means that you never plan to reassigning it inside of this class
  // after this, you can add const to StyledText(this.text, {super.key}); to optimise the class
  // because the value of the text variable is stored and cached and reused by Dart

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.red,
        fontSize: 25,
      ),
    );
  }
}
