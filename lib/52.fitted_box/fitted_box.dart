import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: ClipRect(
        clipper: MyRectClipper(),
        child: Container(
          height: 50,
          width: 150,
          color: Colors.brown,
          child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('assets/images/cat3.jpg'),clipBehavior: Clip.hardEdge,),
        ),
      ),
    );
  }
}

class MyRectClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    var path=Rect.fromLTWH(40, 0, 70, 50);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
