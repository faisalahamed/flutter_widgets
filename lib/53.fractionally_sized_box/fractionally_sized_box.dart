import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyFractionallySizedBox extends StatelessWidget {
  const MyFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Fractionally sized box',
      body: FractionallySizedBox(
        heightFactor: 0.7,
        child: Container(
          color: Colors.red,
          child: Text('Rotate to view the change'),
        ),
      ),
    );
  }
}
