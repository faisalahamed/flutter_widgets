import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool taped = false;
  void change() {
    setState(() {
      taped = !taped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Animated Container',
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          height: taped ? 100 : 200,
          width: taped ? 100 : 200,
          color: Colors.red,
          curve: Curves.easeIn,
          child: GestureDetector(
            onTap: () => change(),
            child: Text('Tap me to resize me!!'),
          ),
        ),
      ),
    );
  }
}
