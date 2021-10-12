import 'package:flutter/material.dart';

import '../layout_page.dart';

//(-1,-1)-----(1,-1)
//(-1,1)-----(1,1)

class MyAlign extends StatelessWidget {
  const MyAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow[100],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow[100],
            ),
          ),
          Align(
            alignment: Alignment(0.3, -0.5),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red[100],
            ),
          ),
        ],
      ),
    );
  }
}
