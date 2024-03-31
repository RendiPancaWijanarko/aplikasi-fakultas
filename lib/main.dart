import 'package:flutter/material.dart';
import 'bottom_nav.dart';
import 'developer_info.dart';
import 'home.dart';
import 'program_study_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faculty Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePageWithCustomAppBar(),
    );
  }
}

class HomePageWithCustomAppBar extends StatefulWidget {
  @override
  _HomePageWithCustomAppBarState createState() =>
      _HomePageWithCustomAppBarState();
}

class _HomePageWithCustomAppBarState extends State<HomePageWithCustomAppBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    ProgramStudyList(),
    DeveloperInfo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNav(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.menu),
          SizedBox(width: 10),
          Text('FEB Mobile'),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        ),
      ],
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.1),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
