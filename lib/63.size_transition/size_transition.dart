import 'package:flutter/material.dart';

import '../layout_page.dart';

class MySizeTransition extends StatelessWidget {
  const MySizeTransition({Key? key}) : super(key: key);

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
