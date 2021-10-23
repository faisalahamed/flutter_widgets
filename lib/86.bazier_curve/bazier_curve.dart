import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyBazierCurve extends StatelessWidget {
  const MyBazierCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Container(
        child: Text('Safe Area'),
      ),
    );
  }
}
