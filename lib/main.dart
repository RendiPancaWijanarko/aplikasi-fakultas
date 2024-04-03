import 'package:flutter/material.dart';
import 'bottom_nav.dart';
import 'developer_info.dart';
import 'home.dart';
import 'program_study_list.dart';
import 'program_studi_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faculty Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Set initialRoute to '/'
      routes: {
        '/': (context) => const HomePageWithCustomAppBar(),
        '/program_studi_detail': (context) => ProgramStudyDetail(),
      },
    );
  }
}

class HomePageWithCustomAppBar extends StatefulWidget {
  const HomePageWithCustomAppBar({Key? key});

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
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.orange,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DeveloperInfo()),
            );
          },
          child: const IconTheme(
            data: IconThemeData(color: Colors.white),
            child: Icon(Icons.info),
          ),
        ),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: const Center(
        child: Text('FEB Mobile'),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.orange,
          ),
          onPressed: () {},
        ),
      ],
      elevation: 5.0,
      shadowColor: Colors.black.withOpacity(0.1),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
