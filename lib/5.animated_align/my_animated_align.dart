import 'package:flutter/material.dart';

import '../layout_page.dart';

//(-1,-1)-----(1,-1)
//(-1,1)-----(1,1)

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: AnimatedAlign(
        alignment: selected ? Alignment.center : Alignment(1, -1),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        child: TextButton(
          onPressed: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Container(
            color: Colors.white,
            height: 100.0,
            width: 100.0,
            child: Row(
              children: [
                const FlutterLogo(size: 30.0),
                Text('Tap to Fly'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
