import 'package:flutter/material.dart';
import 'package:scroll_bottom_navigation_bar/scroll_bottom_navigation_bar.dart';

import '../layout_page.dart';

class MyScrollableBottomNavigation extends StatefulWidget {
  const MyScrollableBottomNavigation({Key? key}) : super(key: key);

  @override
  State<MyScrollableBottomNavigation> createState() =>
      _MyScrollableBottomNavigationState();
}

class _MyScrollableBottomNavigationState
    extends State<MyScrollableBottomNavigation> {
  int selectedIndex = 0;

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'BottomNavigtion',
      body: Scaffold(
        bottomNavigationBar: ScrollBottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedIconTheme: IconThemeData(color: Colors.amber),
          controller: controller,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: 'About'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'AC'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'Sport'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
          ],
        ),
        body: ValueListenableBuilder<int>(
          valueListenable: controller.bottomNavigationBar.tabNotifier,
          builder: (context, tabIndex, child) => ListView.builder(
            controller: controller,
            itemBuilder: (context, index) {
              return Card(child: Text('da'));
            },
          ),
        ),
      ),
    );
  }
}
