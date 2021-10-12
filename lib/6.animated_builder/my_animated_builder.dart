// import 'dart:math' as math;

// import 'package:flutter/material.dart';

// import '../layout_page.dart';

// //(-1,-1)-----(1,-1)
// //(-1,1)-----(1,1)

// class MyAnimateBuilder extends StatefulWidget with TickerProviderStateMixin{
//    MyAnimateBuilder({Key? key}) : super(key: key);

//   @override
//   State<MyAnimateBuilder> createState() => _MyAnimateBuildertate();
// }

// class _MyAnimateBuildertate extends State<MyAnimateBuilder> {
//   late final AnimationController _controller = AnimationController(vsync: this)
//     ..repeat();
//   @override
//   Widget build(BuildContext context) {
//     return MyLayout(
//       pageTitle: 'Safe Area',
//       body: AnimatedBuilder(
//           animation: _controller,
//           child: Container(
//             height: 10,
//             width: 10,
//           ),
//           builder: (BuildContext context, Widget? child) {
//             return Transform.rotate(
//               angle: _controller.value * 2.0 * math.pi,
//               child: child,
//             );
//           }),
//     );
//   }
// }
