import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyOverflowBox extends StatelessWidget {
  const MyOverflowBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        child: Align(
          alignment: Alignment(1.0, 1.0),
          child: SizedBox(
            height: 20,
            width: 20,
            child: OverflowBox(
              maxHeight: 50,
              maxWidth: 60,
              child: Container(
                color: Colors.teal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
