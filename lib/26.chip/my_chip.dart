import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyChip extends StatelessWidget {
  const MyChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Chip(
        backgroundColor: Colors.green,
        side: BorderSide(color: Colors.yellow),
        label: Text('Hello i am faisal'),
      ),
    );
  }
}
