import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp_Beginner());
}

class MyApp_Beginner extends StatelessWidget {
  MyApp_Beginner({super.key});

  //Variables https://dart.dev/language/variables
  String name = "Esmeralda";
  int age = 27;
  double pi = 24/7;
  bool isBeginner = true;

  /*
  Basic Math Operators:
  1 + 1  = 2,   add
  4 - 3  = 1,   subtractor
  5 * 5  = 25,  multiply
  10 / 2 = 5,   divide
  5 ** 2 = 25,  to the power of x
  5 % 2  = 1,   remainder (modulo)
  */

  /* https://dart.dev/language/operators
  Comparison Operators:
  1 == 1  = true,   equal to
  1 != 1  = false,  not equal to
  1 > 1   = false,  greater than
  1 < 1   = false,  less than
  1 >= 1  = true,   greater than or equal to
  1 <= 1  = true,   less than or equal to
  */

  /*
  Logical Operators:
  1 && 1  = true,   and
  1 || 1  = true,   or
  ! 1     = false,  not
  ?? null = true,   if-null
  ^                 xor
  */

  // function
  void greet() {
    print("Hello, $name");
  }

  // function with parameters
  void greetP(String name, int age) {
    print("Hello, $name, you are $age years old");
  }

  // function with returnvalue
  int add(int a, int b) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    greet();
    greetP(name, age);

    int i = add(1, 2);
    print(i);
    //print Strings as parameters
    String output = "$name is $age";
    print(output);

    // Condition
    if (age >= 18){
      print("you are an adult");
    } else if (age < 18){
      print("you are a minor");
    } else {
      print("you are a beginner");
    }

    // Switch
    List<String> grades = ['A', 'B', 'C', 'D', 'E', 'F'];
    Random random = Random();
    String grade = grades[random.nextInt(grades.length)];
    switch (grade) {
      case "A":
        print("Excellent!");    
        break;
      case "B":
        print("Good!");
        break;
      case "C":
        print("Fair!");
        break;
      case "D":
        print("Not Good!");
        break;
      case "E":
        print("Poor!");
        break;
      case "F":
        print("Fail!");
        break;
      default:
    }

    // Loops
    for (var i = 0; i < 5; i++) {
      print("Loop $i");
    }

    return MaterialApp(
      home: Scaffold(),
      debugShowCheckedModeBanner: false,
    );
  }
}
