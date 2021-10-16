import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyFadeTransition extends StatefulWidget {
  const MyFadeTransition({Key? key}) : super(key: key);

  @override
  State<MyFadeTransition> createState() => _MyFadeTransitionState();
}

class _MyFadeTransitionState extends State<MyFadeTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
    _opacity = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    // _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Fade Transition',
      body: Column(
        children: [
          Expanded(
            child: FadeTransition(
              opacity: _opacity,
              child: Text(
                'hello',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
