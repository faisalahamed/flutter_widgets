import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideBottomNavigationBar extends StatefulWidget {
  const HideBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _HideBottomNavigationBarState createState() =>
      _HideBottomNavigationBarState();
}

class _HideBottomNavigationBarState extends State<HideBottomNavigationBar> {
  late ScrollController _con;
  bool showStatus = true;
  @override
  void initState() {
    _con = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _con.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<UserScrollNotification>(
        onNotification: (noti) {
          if (noti.direction == ScrollDirection.forward) {
            setState(() {
              showStatus = true;
            });
          }
          if (noti.direction == ScrollDirection.reverse) {
            setState(() {
              Future.delayed(Duration(seconds: 2));
              showStatus = false;
            });
          }

          return true;
        },
        child: ListView.builder(
            controller: _con,
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Index $index'),
              );
            }),
      ),
      bottomNavigationBar: showStatus
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.green,
              selectedFontSize: 18,
              selectedIconTheme: IconThemeData(size: 38),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm), label: 'About'),
                BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'AC'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance), label: 'Sport'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.business), label: 'Business'),
              ],
            )
          : null,
    );
  }
}
