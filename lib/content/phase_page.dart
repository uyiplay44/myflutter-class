import 'package:flutter/material.dart';
import 'package:mycustom_project/content/phase1_page.dart';
import 'package:mycustom_project/content/phase2_page.dart';
import 'package:mycustom_project/content/phase3_page.dart';

class FrontaScreen extends StatefulWidget {
  const FrontaScreen({super.key});

  @override
  State<FrontaScreen> createState() => _FrontaScreenState();
}

class _FrontaScreenState extends State<FrontaScreen> {
  int _myIndex = 0;

  final List<Widget> _screenIndex = const [
    HomePageScreen(),
    OptionPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(index: _myIndex, children: _screenIndex),
      ),
      // appBar: AppBar(
      //   title: Text('First Screen'),
      //   centerTitle: true,
      //   backgroundColor: Colors.blue[100],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _myIndex,
        onTap: (index) {
          setState(() {
            _myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30, color: Colors.white),
            label: 'Person',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30, color: Colors.white),
            label: 'Account',
          ),
        ],
        backgroundColor: Colors.red[800],
      ),
    );
  }
}
