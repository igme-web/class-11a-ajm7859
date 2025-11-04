import 'package:flutter/material.dart';
import 'package:inclass_11a/demo_11a_bottomnav.dart';

// At top of main.dart
import 'page_home.dart';
import 'page_search.dart';
import 'page_settings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Demo11aBottomNav());
  }
}

class Demo11a extends StatefulWidget {
  const Demo11a({super.key});

  @override
  State<Demo11a> createState() => _Demo11aState();
}

class _Demo11aState extends State<Demo11a> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.amber[700],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PageHome(),
            PageSearch(),
            PageSettings(),
          ]
        ),
      ),
    );
  }
}
