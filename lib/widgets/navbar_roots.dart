import 'package:cloud_health/screens/home_screen.dart';
import 'package:cloud_health/screens/messages_screen.dart';
import 'package:cloud_health/screens/schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({Key? key}) : super(key: key);

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int selectedIndex = 0;
  final screens = [
    // Home Screen
   HomeScreen(),
    // Message Screen
    MessagesScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Setting Screen
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor:  Colors.red,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Messages",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: "Appointments",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
