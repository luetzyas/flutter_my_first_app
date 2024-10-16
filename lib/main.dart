import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_my_first_app/pages/first_page.dart';
import 'package:flutter_my_first_app/pages/home_page.dart';
import 'package:flutter_my_first_app/pages/profile_page.dart';
import 'package:flutter_my_first_app/pages/second_page.dart';
import 'package:flutter_my_first_app/pages/settings_page.dart';

void main() {
  //runApp(MyAppBeginner());
  //runApp(MyAppWidget());
  runApp(const MyAppNavigation());
}

class MyAppBeginner extends StatelessWidget {
  MyAppBeginner({super.key});

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

class MyAppWidget extends StatelessWidget {
  MyAppWidget({super.key});

  //List for Listview
  List names = ["Esmeralda", "Stefan", "Joshua", "Roland"];

  //onTab() function
  void userTapped() {
    print("User tapped");
  }
  void userDoubleTapped() {
    print("User double tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Place this inside the MaterialApp properties
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        // body base
        /*body: Center(
          child: Container(
            width: 300,
            height: 300,
            //color: Colors.amber[200],
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 25, 
              vertical: 50
            ),
            /*child: Text(
              "Esmeralda",
              style: TextStyle(
                fontSize: 30 
              ),
            ),
            */
            child: Icon(
              Icons.headphones,
              size: 100,
              color: Colors.brown[300],
            ),
          ),  
        ),
        */
        // body column
        /*body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue[600],
              )
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue[400],
              )
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue[100],
              )
            )
          ],
        ),*/
        // body list, because Column with fix height = overfloat
        /*body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 100,
              child: Container(
                color: Colors.blue[600],
              )
            ),
            Container(
              height: 100,
              child: Container(
                color: Colors.blue[400],
              )
            ),
            Container(
              height: 100,
              child: Container(
                color: Colors.blue[100],
              )
            )
          ],
        ),*/
        //use Listview builder
        /*body: ListView.builder(
          itemCount: names.length,
          itemBuilder:(context, index) => ListTile(
            //title: Text(index.toString()),
            title: Text(names[index]),
          )
        )*/
        //GridView
        /*body: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          itemBuilder: (context, index) => Container(
            color: Colors.blue[600],
            margin: EdgeInsets.all(2),
          ),
        ),*/
        // Stack
        /*body: Stack(
          alignment: Alignment.center,
          children: [
            //big box
            Container(
              height: 300,
              width: 300,
              color: Colors.lightGreen[600],
            ),
            //medium box
            Container(
              height: 200,
              width: 200,
              color: Colors.lightGreen[700],
            ),
            //small box
            Container(
              height: 100,
              width: 100,
              color: Colors.lightGreen[800],
            ),
          ]
        )*/
        // body with onTab()
        /*body: Center(
          child: GestureDetector(
            onTap: () {
              print("User Tapped");
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green[500],
              child: Center(
                child: Text("Tap Me"),
              ),
            ),
          ),
        ),*/
        // Gesture with function
        /*body: Center(
          child: GestureDetector(
            onDoubleTap: () {
              userDoubleTapped();
            },
            onTap: () {
              userTapped();
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.green[500],
              child: Center(
                child: Text("Tap Me"),
              ),
            ),
          ),
        ),*/
      ),
    );
  }
}

class MyAppNavigation extends StatelessWidget {
  const MyAppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
      routes: {
        '/firstpage': (context) => Firstpage(),
        '/secondpage': (context) => SecondPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage(),
      }
    );
  }
}