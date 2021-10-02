// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:university/constants/constants.dart';
import 'package:university/main.dart';
import 'package:university/screens/home/home_screen.dart';
import 'package:university/screens/mentor/mentor_screen.dart';

//Future Upgrades can be to use animations while changing the screens

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onTap;
  const BottomNavBar({Key? key, required this.onTap, this.selectedIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue.shade400,
      selectedIconTheme: IconThemeData(size: 27.0),
      selectedItemColor: Colors.black87,
      selectedLabelStyle: TextStyle(
        color: Colors.black87,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.7,
      ),
      unselectedItemColor: Colors.black45,
      showUnselectedLabels: false,
      onTap: onTap,
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Mentors',
        ),
      ],
    );
  }
}
