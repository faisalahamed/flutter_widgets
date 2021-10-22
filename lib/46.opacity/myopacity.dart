import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyOpacity extends StatelessWidget {
  const MyOpacity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLayout(
      pageTitle: 'Safe Area',
      body: SafeArea(
        bottom: true,
        left: true,
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.all(100.0),
        right: true,
        top: true,
        child: Text('Safe Area'),
      ),
    );
  }
}
