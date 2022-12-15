// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:project_one_/pages_/account_.dart';
import 'package:project_one_/pages_/add_.dart';
import 'package:project_one_/pages_/chat_.dart';
import 'package:project_one_/pages_/home_.dart';
import 'package:project_one_/pages_/my_adds_.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentPage = 0;
  final _pages = [
    Home_(),
    MyAdds_(),
    Add_(),
    Chat_(),
    Account_(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        showSelectedLabels: true,
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'My Ads'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.add_circle),
              label: 'Add'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: 'Chat'),
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.person_outline),
              label: 'Person'),
        ],
      ),
      body: _pages[_currentPage],
    );
  }
}
