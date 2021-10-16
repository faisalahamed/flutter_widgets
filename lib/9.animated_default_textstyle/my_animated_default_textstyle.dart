import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyAnimatedDefaultTextStyle extends StatefulWidget {
  const MyAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  State<MyAnimatedDefaultTextStyle> createState() =>
      _MyAnimatedDefaultTextStyleState();
}

class _MyAnimatedDefaultTextStyleState
    extends State<MyAnimatedDefaultTextStyle> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Animated Default TextStyle',
      body: Column(
        children: [
          AnimatedDefaultTextStyle(
            child: Text('ok'),
            style: isSelected
                ? TextStyle(color: Colors.black, fontSize: 38)
                : TextStyle(color: Colors.pink),
            duration: Duration(seconds: 2),
            curve: Curves.easeIn,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Text('animate'),
          )
        ],
      ),
    );
  }
}
