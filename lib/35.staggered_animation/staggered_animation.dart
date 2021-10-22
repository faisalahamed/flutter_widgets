import 'package:flutter/material.dart';

class MyStaggeredAnimation extends StatefulWidget {
  const MyStaggeredAnimation({Key? key}) : super(key: key);

  @override
  _MyStaggeredAnimationState createState() => _MyStaggeredAnimationState();
}

class _MyStaggeredAnimationState extends State<MyStaggeredAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> barHEight;
  late Animation<double> avatar;
  late Animation<double> place1;
  late Animation<double> placw2;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    barHEight = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0, 0.3, curve: Curves.easeIn)));
    avatar = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.3, 0.6, curve: Curves.elasticOut)));
    place1 = Tween<double>(begin: 0, end: 100).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.5, 0.7, curve: Curves.easeIn)));
    placw2 = Tween<double>(begin: 0, end: 100).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.7, 0.9, curve: Curves.easeIn)));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Scaffold(
        body: animatedView(size),
      ),
    );
  }

  Column animatedView(Size size) {
    return Column(
        children: [
          SizedBox(
            height: barHEight.value,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                Positioned(
                  top: 200,
                  left: size.width / 2 - 50,
                  child: Transform(
                    transform: Matrix4.diagonal3Values(
                        avatar.value, avatar.value, avatar.value),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue.shade700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: place1.value,
            color: Colors.pink,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: placw2.value,
            color: Colors.red,
          )
        ],
      );
  }
}
