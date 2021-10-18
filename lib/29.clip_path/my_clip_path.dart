import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyClipPath extends StatelessWidget {
  const MyClipPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Safe Area',
        body: Container(
          height: 200,
          width: 200,
          color: Colors.yellow,
          child: Center(
            child: ClipPath(
              clipper: ClippathClipper(),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('hello'),
              ),
            ),
          ),
        ));
  }
}

class ClippathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var _path = Path();
    // _path.lineTo(0, size.height - 50);
    // var controllerPoint = Offset(50, size.height);
    // var endPoint = Offset(size.width / 2, size.height);
    // _path.quadraticBezierTo(
    //     controllerPoint.dx, controllerPoint.dy, endPoint.dx, endPoint.dy);
    // _path.lineTo(size.width, size.height);

    _path.lineTo(0, size.height);
    _path.lineTo(size.height, 0);
    // _path.lineTo(size.width - 50, size.height - 50);

    return _path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
