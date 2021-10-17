import 'dart:math';

import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyAnimatedWidget extends StatefulWidget {
  const MyAnimatedWidget({Key? key}) : super(key: key);

  @override
  State<MyAnimatedWidget> createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Animated widget',
        body: MyAnimatedWidgetStyle(
          controller: _controller,
        ));
  }
}

class MyAnimatedWidgetStyle extends AnimatedWidget {
  const MyAnimatedWidgetStyle(
      {Key? key, required AnimationController controller})
      : super(key: key, listenable: controller);
  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2 * pi,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.accents[Random().nextInt(15)],
        child: const Center(
          child: Text('My Custom Animation'),
        ),
      ),
    );
  }
}
