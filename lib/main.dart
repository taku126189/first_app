// Dart is a type-safe language
// All values are of certain Types, more than one Type is poosible and common
// e.g., Hello World = String, Object, 29 = int, num, Object, MaterialApp = MaterialApp, Widget, Object
// widgets are objects in Flutter
// all other values are also objects
// objects are data structures in memory in Dart
// that's how Dart saves your values in memory on the dvice on which your application is running
// all objects are working together to bring the final user interface onto the screen
// e.g., Scaffold object reaches out to color object to bring it to the final user interface
// Dart is an object-oriented language (every value is an object)
// Objects are created based on blueprints, classes
// Objects = data structures. Data structures = Data (varibales/properties) and Functions (methods)
// Objects help with organising data and separating logic
// e.g., Color.fromARGB(255, 26, 2, 80)
// if you add . like Color.fromARGB(255, 26, 2, 80)., you can see functions or properties that are grouped into an object
// in this case, which functions are provided by which object is defined by the class
// Object is created by calling the 'constructor function' of a class
// consructor functions create the object, perform initialisation work, store it in memory etc
// so you can create objects based on classess such as LinearGradient()
// creating an object based on a class= class instantiation or object instantiation
// custom widgets are also classes

// variables are data containers
//
import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

// custom function
// {} is function body
// defining a function (i.e., main function)
// you do not need to execute (call) main function bc it is automatically executed
void main() {
// runApp function should be imported
// runApp() tells Flutter what to display on the screen (i.e., which UI elements to display)
// it should be inside main function
// functions and parameters
// functions may need input values (i.e., parameters or arguments)
// no parameters: void main () {}
// 1 parameter: void print(text);
// 2 parameters: void add(a, b) {}
// runApp takes a widget tree as a value
// widgets are nested into each other. e.g., center(child: Text('Hello World'),);
// home is a widget that specifies which UI is used for the app
// positional arguments vs names arguments
// positional arguments are required. names arguments are optional
// positional arguments can be made optional by wrapping them with []
// void add (a, [b]) {
//  print (a + b);
// }
// // if a parameter is optional, you can assign a default value to it.
// this value is used when no value is provided for the argument
// void add(a, [b = 5]) {
//  print(a + b);
// }
// add(10);
// add (12, 6); // here, b is replaced with 6
// named parameters
// void add({a, b}) {
//  print(a + b);
// }
// add(b: 10, a: 13);
// default values in named parameters
// void add({a, b = 5}) {
//  print(a + b);
// }
// add(b: 13); // in this case, a becomes null
// required named parameters
// void add(required a, required b}) {
//  print(a + b);
// }
// add(b: 10, a: 13);

  runApp(
    // const helps Dart optimise runtime performance
    // const is stored in device memory and from the next time it is reused
    // so you need to use const when prompted for efficiency
    const MaterialApp(
      home: Scaffold(
        // backgroundColor argument's type is Color
        // Color? means optional so you can put null
        // backgroundColor: Color.fromARGB(255, 36, 231, 33),

        // this calls the constructor function of this class
        // passing the colors
        // if you take the first way (list), you need to pass a list of colors here
        body: GradientContainer(
          Color.fromARGB(115, 208, 23, 23),
          Color.fromARGB(137, 77, 199, 21),
        ),
      ),
    ),
  );
}
