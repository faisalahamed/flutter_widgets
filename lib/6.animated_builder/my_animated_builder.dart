import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../layout_page.dart';

// animated builder only rebuild the child widget not rebuild the widget tree
class MyAnimateBuilder extends StatefulWidget {
  const MyAnimateBuilder({Key? key}) : super(key: key);

  @override
  State<MyAnimateBuilder> createState() => _MyAnimateBuildertate();
}

class _MyAnimateBuildertate extends State<MyAnimateBuilder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat();

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: AnimatedBuilder(
          animation: _controller,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          }),
    );
  }
}
