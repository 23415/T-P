import 'package:flutter/material.dart';
import 'package:training_and_placement_project/screen/homepage.dart';

import '../screen/chatPage.dart';
import '../screen/remainderpage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> listScreens = [
    HomePage(),
    RemainderPage(),
    ChatPage(),
  ];
  int _selectedIndex = 1;
  void _onTapped(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: listScreens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: 'remainder',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline_outlined),
                label: 'Chat',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blueAccent,
            onTap: _onTapped,
          )),
    );
  }
}
