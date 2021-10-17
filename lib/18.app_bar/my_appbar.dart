import 'package:flutter/material.dart';

import '../layout_page.dart';

// TODO:: row scrollable

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My APP Bar',
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  duration: Duration(seconds: 1),
                  content: Text('button clicked'),
                ),
              );
            },
          ),
          Icon(Icons.set_meal)
        ],
        flexibleSpace: Container(
          color: Colors.amberAccent,
          height: 100,
        ),
        // leadingWidth: 128,
        // leading: Icon(Icons.backpack),
        // automaticallyImplyLeading: false,
        bottom: MyPreferedSizeWidget(),
      ),
    );
  }
}

class MyPreferedSizeWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const MyPreferedSizeWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.square(50);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Row(
          children: [
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Bottom',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
