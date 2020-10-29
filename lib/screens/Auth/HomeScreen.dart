import 'package:flutter/material.dart';
import 'package:practice_ui/screens/Auth/AdharCardUploadScreen.dart';
import 'package:practice_ui/screens/Auth/HomePage.dart';
import 'package:practice_ui/screens/Auth/ProfilePage.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    AdharCardUploadScreen(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('SignUp'),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Profile'),
              backgroundColor: Colors.blueAccent),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}

