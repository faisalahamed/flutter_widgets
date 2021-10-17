import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int selectedIndex = 0;

  static const TextStyle _textStyle = TextStyle(fontSize: 28);
  static const List<Widget> _list = <Widget>[
    Text(
      'Index 0: Home',
      style: _textStyle,
    ),
    Text(
      'Index 1: About',
      style: _textStyle,
    ),
    Text(
      'Index 3: Profile',
      style: _textStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'BottomNavigtion',
      body: Scaffold(
        body: Center(
          child: _list.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'AC'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
