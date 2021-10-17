import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyBaseLine extends StatelessWidget {
  const MyBaseLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Scaffold(
        body: Row(
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 58, fontWeight: FontWeight.bold),
            ),
            Baseline(
              baseline: -30,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
