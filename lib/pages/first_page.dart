import 'package:flutter/material.dart';
import 'package:flutter_my_first_app/pages/home_page.dart';
import 'package:flutter_my_first_app/pages/profile_page.dart';
import 'package:flutter_my_first_app/pages/second_page.dart';
import 'package:flutter_my_first_app/pages/settings_page.dart';

class Firstpage extends StatefulWidget {
  Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int selectedIndex = 0; 
 // start withg Homepage
  void navigateBottomBar(int i){
    setState(() {
      selectedIndex = i;
    });  
  }

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1. page"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        elevation: 0,
      ),
      //base for navigation
      /*body: Center(
        child: ElevatedButton(
          child: Text("Go to 2. page"), 
          onPressed: () {
            // goes to SecondPage() with a backbutton
            /*Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              )
            );*/
            Navigator.pushNamed(context, '/secondpage');
          }, 
        ),
      ),*/
      // Drawer
      /*drawer: Drawer(
        backgroundColor: Colors.blue[600],
        child: Column(
          children: [
            // common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: (){
                //pop drawer first
                Navigator.pop(context);
                //go to home page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: (){
                //pop drawer first
                Navigator.pop(context);
                //go to home page
                Navigator.pushNamed(context, '/settingspage');
              },
            ),
          ],
        ),
      ),
      */
      body: _pages[selectedIndex],
      //Bottom Menu
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //profile 
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}