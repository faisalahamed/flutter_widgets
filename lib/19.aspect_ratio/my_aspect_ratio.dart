import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: 100.0,
        height: 100.0,
        child: AspectRatio(
          aspectRatio: 1 / 5,
          // aspectRatio: 5/ 1,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
