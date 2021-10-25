import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyTilesDesign extends StatefulWidget {
  const MyTilesDesign({Key? key}) : super(key: key);

  @override
  State<MyTilesDesign> createState() => _MyTilesDesignState();
}

class _MyTilesDesignState extends State<MyTilesDesign>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();

    //for one time animation remove ..repeat and un comment _controller.forward
    // _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                // color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      child: makeContainer(50, 50),
                      left: 0,
                    ),
                    Positioned(
                      child: makeContainer(100, 100),
                      left: 50,
                      top: 50,
                    ),
                    Positioned(
                      child: makeContainer(50, 50),
                      left: 150,
                    ),
                    Positioned(
                      child: makeContainer(50, 50),
                      left: 0,
                      top: 150,
                    ),
                    Positioned(
                      child: makeContainer(100, 100),
                      left: 150,
                      top: 150,
                    ),
                    Positioned(
                      child: makeContainer(50, 50),
                      left: 250,
                      top: 100,
                    ),
                    Positioned(
                      child: makeContainer(50, 50),
                      left: 100,
                      top: 250,
                    ),
                    Positioned(
                      child: makeContainer(50, 50),
                      left: 250,
                      top: 250,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container makeContainer(double height, double width) {
    return Container(
      height: height,
      width: width,
      color: Colors.brown,
    );
  }
}
