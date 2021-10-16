import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  bool opacity = false;

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Animated Opacity',
      body: Column(
        children: [
          Expanded(
            child: AnimatedOpacity(
              curve: Curves.bounceIn,
              opacity: opacity?1.0:0.1,
              duration: Duration(seconds: 1),
              child: Text(
                'hello',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                opacity = !opacity;
              });
            },
            child: Text('change opacity'),
          )
        ],
      ),
    );
  }
}
