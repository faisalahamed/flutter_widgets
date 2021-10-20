import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyClipRect extends StatelessWidget {
  const MyClipRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Safe Area',
        body: ClipRect(
          clipper: myRectClipper(),
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Colors.red,
            child: Image.network(
                'https://live.staticflickr.com/3718/19846827895_4ecf58c023_b.jpg'),
          ),
        ));
  }
}

class myRectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    var path = Rect.fromLTWH(100.0, 40.0, 150, 300);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
