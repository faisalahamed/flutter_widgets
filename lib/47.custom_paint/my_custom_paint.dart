import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyCustomPaint extends StatelessWidget {
  const MyCustomPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: CustomPaint(
        painter: MyCustomPainter(),
        size: Size(200, 200),
        child: Center(
          child: Container(
            color: Colors.amber,
            child: Text('data'),
          ),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.drawLine(Offset.zero, Offset(100.0, 200.0), Paint());
    canvas.drawArc(
        Rect.fromPoints(
          Offset.zero,
          Offset(100.0, 300.0),
        ),
        12.0,
        25.0,
        false,
        Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
