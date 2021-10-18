import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyCircularProgressIndicator extends StatefulWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  State<MyCircularProgressIndicator> createState() =>
      _MyCircularProgressIndicatorState();
}

class _MyCircularProgressIndicatorState
    extends State<MyCircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return const MyLayout(
        pageTitle: 'Safe Area',
        body: CircularProgressIndicator(
            backgroundColor: Colors.red,
            strokeWidth: 8.0,
            color: Colors.yellow));
  }
}
