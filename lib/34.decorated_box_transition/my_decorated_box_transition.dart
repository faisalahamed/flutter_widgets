import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyDecoratedBoxTransition extends StatefulWidget {
  const MyDecoratedBoxTransition({Key? key}) : super(key: key);

  @override
  State<MyDecoratedBoxTransition> createState() =>
      _MyDecoratedBoxTransitionState();
}

class _MyDecoratedBoxTransitionState extends State<MyDecoratedBoxTransition>
    with SingleTickerProviderStateMixin {
  late DecorationTween _deco;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    _deco = DecorationTween(
      begin: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
      ),
      end: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(35),
        boxShadow: <BoxShadow>[
          BoxShadow(
              blurRadius: 25,
              offset: Offset(0.0, 6.0),
              spreadRadius: 100,
              color: Colors.redAccent),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Decoratedboxtransition',
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DecoratedBoxTransition(
            decoration: _deco.animate(_controller),
            child: ListTile(
              title: Text('Hello'),
            ),
          ),
        ));
  }
}
