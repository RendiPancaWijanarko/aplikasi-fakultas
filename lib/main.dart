import 'package:flutter/material.dart';
import 'bottom_nav.dart';
import 'developer_info.dart';
import 'home.dart';
import 'program_study_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faculty Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePageWithCustomAppBar(),
    );
  }
}

class HomePageWithCustomAppBar extends StatefulWidget {
  const HomePageWithCustomAppBar({super.key});

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
      appBar: const MyCustomAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNav(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DeveloperInfo()),
          );
        },
        child: const Icon(Icons.info),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        children: [
          Icon(Icons.menu),
          SizedBox(width: 10),
          Text('FEB Mobile'),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {},
        ),
      ],
      elevation: 5,
      shadowColor: Colors.black.withOpacity(0.1),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
