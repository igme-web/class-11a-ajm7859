import 'package:flutter/material.dart';

import 'page_home.dart';
import 'page_search.dart';
import 'page_settings.dart';
import 'page_profile.dart';

int currentBottomTab = 0;

final List<Widget> bottomNavScreens = [
  PageHome(),
  PageSearch(),
  PageSettings(),
  PageProfile(),
];

class Demo11aBottomNav extends StatefulWidget {
  const Demo11aBottomNav({super.key});

  @override
  State<Demo11aBottomNav> createState() => _Demo11aBottomNavState();
}

class _Demo11aBottomNavState extends State<Demo11aBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav Demo")),
      body: IndexedStack(index: currentBottomTab, children: bottomNavScreens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // Changed from fixed
        currentIndex: currentBottomTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green, // Add this
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.blue, // Add this
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.red, // Add this
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.purple, // Add this
          ),
        ],
        onTap: (value) {
          setState(() {
            currentBottomTab = value;
          });
        },
      ),
    );
  }
}
