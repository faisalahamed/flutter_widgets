import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyAnimatedPositioned extends StatefulWidget {
  const MyAnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPositioned> createState() => _MyAnimatedPositionedState();
}

class _MyAnimatedPositionedState extends State<MyAnimatedPositioned> {
  bool _position = true;
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(
                  left: _position ? 100 : 50,
                  // right: _position ?200 : 150,
               
                  curve: Curves.bounceIn,
                  child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 350,
                 
                    child: Text('animate Position'),
                  ),
                  duration: Duration(seconds: 1),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _position = !_position;
              });
            },
            child: Text('change position'),
          )
        ],
      ),
    );
  }
}
