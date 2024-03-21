import 'package:bottumsheet/ScreenAccount.dart';
import 'package:bottumsheet/ScreenMain.dart';
import 'package:bottumsheet/ScreenSearch.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _index = 0;
  final _pages = [ScreenMain(), ScreenSearch(), ScreenAccount()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_index],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            selectedItemColor: Colors.blue[900],
            unselectedItemColor: Colors.black,
            selectedFontSize: 14,
            unselectedFontSize: 10,
            showUnselectedLabels: false,
            currentIndex: _index,
            onTap: (newIndex) {
              setState(() {
                _index = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ]));
  }
}
