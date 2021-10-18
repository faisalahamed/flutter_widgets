import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyClipOval extends StatelessWidget {
  const MyClipOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Safe Area',
        body: Container(
          height: 200,
          width: 200,
          color: Colors.yellow,
          child: Center(
            child: ClipOval(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              clipper: myClipper(),
              child: Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ),
            ),
          ),
        ));
  }
}

class myClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(50.0, 50.0, 50, 50);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
