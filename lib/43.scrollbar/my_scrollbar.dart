import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyScrollBar extends StatelessWidget {
  const MyScrollBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        hoverThickness: 32,
        thickness: 22,
        showTrackOnHover: true,
        interactive: true,
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('index $index'),
              );
            }),
      ),
    );
  }
}
