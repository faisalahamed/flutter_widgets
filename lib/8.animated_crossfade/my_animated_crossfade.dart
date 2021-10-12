import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyAnimatedCrossfade extends StatefulWidget {
  const MyAnimatedCrossfade({Key? key}) : super(key: key);

  @override
  _MyAnimatedCrossfadeState createState() => _MyAnimatedCrossfadeState();
}

class _MyAnimatedCrossfadeState extends State<MyAnimatedCrossfade> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Animated crossfade',
      body: GestureDetector(
        onTap: () {
          setState(() {
            _first = !_first;
          });
        },
        child: AnimatedCrossFade(
          firstChild: Container(
            height: 320,
            width: 320,
            color: Colors.pink,
            child: Text('first widget'),
          ),
          secondChild: Container(
            height: 120,
            width: 120,
            color: Colors.red,
            child: Text('second widget'),
          ),
          duration: Duration(seconds: 1),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}
