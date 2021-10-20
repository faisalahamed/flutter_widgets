import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Clip R Rect',
        body: Container(
          height: 300,
          width: 300,
          color: Colors.red,
          child: ClipRRect(
            clipper: myRectClipper(),
            // borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
                'https://live.staticflickr.com/3718/19846827895_4ecf58c023_b.jpg'),
          ),
        ));
  }
}

class myRectClipper extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    var path = RRect.fromLTRBAndCorners(
      200,
      250,
      80,
      80.0,
      bottomLeft: Radius.circular(70.0),
      topRight: Radius.circular(70.0),
    );
    // left to right size
    // top to down size
    // right to left size
    // bottom marzin

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    return true;
  }
}
