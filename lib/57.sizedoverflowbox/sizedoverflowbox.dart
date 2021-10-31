import 'package:flutter/material.dart';

import '../layout_page.dart';

class MySizedOverflowBox extends StatelessWidget {
  const MySizedOverflowBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Container(
        color: Colors.redAccent,
        height: 100,
        width: 100,
        child: SizedOverflowBox(
          size: Size(20, 20),
          child: Align(
            alignment: Alignment(1.3, 1.4),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.teal,
              child: Text('ok'),
            ),
          ),
        ),
      ),
    );
  }
}
