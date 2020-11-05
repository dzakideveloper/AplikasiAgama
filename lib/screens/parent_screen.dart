import 'package:aplikasi_agama/screens/menus/adab_screen.dart';
import 'package:aplikasi_agama/screens/menus/attauhid_screen.dart';
import 'package:aplikasi_agama/screens/menus/fiqih_screen.dart';
import 'package:flutter/material.dart';

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _lastSelected = 0;
  final List<Widget> menu = <Widget>[
    HomeScreen(),
    HistoryScreen(),
    AccountScreen(),
  ];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: menu.elementAt(_lastSelected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _lastSelected,
        type: BottomNavigationBarType.fixed,
        onTap: _selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Adab")),
          BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Fiqih")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Profile")),
        ],
      ),
    );
  }
}
