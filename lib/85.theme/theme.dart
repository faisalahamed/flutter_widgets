import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyTheme extends StatelessWidget {
  const MyTheme({Key? key}) : super(key: key);

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
