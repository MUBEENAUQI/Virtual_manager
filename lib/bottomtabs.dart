import 'package:flutter/material.dart';
import 'favourites.dart';
import 'alerts.dart';
import 'home.dart';
import './calender.dart';

class Bottomtabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomtabsState();
  }
}

class _BottomtabsState extends State<Bottomtabs> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Home()),
    Center(child: Calender()),
    Center(child: Favourites()),
    Center(child: Alerts()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        unselectedItemColor: Color.fromRGBO(154, 162, 165, 1.0),
        selectedItemColor: Color.fromRGBO(245, 189, 86, 1.0),
        // selectedFontSize: 10,
        // unselectedFontSize: 5,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("Calender"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favourites"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm),
            title: Text("Alerts"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
