import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyAnimatedSize extends StatefulWidget {
  const MyAnimatedSize({Key? key}) : super(key: key);

  @override
  State<MyAnimatedSize> createState() => _MyAnimatedSizeState();
}

class _MyAnimatedSizeState extends State<MyAnimatedSize> {
  bool _size = true;
  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Column(
        children: [
          AnimatedSize(
            curve: Curves.bounceIn,
            child: Container(
              color: Colors.red,
              width: _size ? 100 : 200,
              height: _size ? 350 : 100,
              child: Text('animate Position'),
            ),
            duration: Duration(seconds: 1),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _size = !_size;
              });
            },
            child: Text('change position'),
          )
        ],
      ),
    );
  }
}
