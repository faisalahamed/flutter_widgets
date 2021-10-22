import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Center(child: Text('Page 1')),
          Center(child: Text('Page 2')),
          Center(child: Text('Page 3')),
          Center(child: Text('Page 4')),
        ],
      ),
    );
  }
}
