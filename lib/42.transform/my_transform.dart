import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../layout_page.dart';

class MyTransform extends StatelessWidget {
  const MyTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Safe Area',
        body: Transform(
          // transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
          // transform: Matrix4.rotationZ(120),
          transform: Matrix4.rotationZ(120),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFFE8581C),
            child: const Text('Apartment for rent!'),
          ),
        ));
  }
}
