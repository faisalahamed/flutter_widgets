import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MySideTransition extends StatefulWidget {
  const MySideTransition({Key? key}) : super(key: key);

  @override
  State<MySideTransition> createState() => _MySideTransitionState();
}

class _MySideTransitionState extends State<MySideTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _ofset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _ofset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
        .animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Animated Default TextStyle',
      body: Column(
        children: [
          Expanded(
            child: SlideTransition(
              position: _ofset,
              child: Text('hello'),
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text('Show / Hide'),
              onPressed: () {
                switch (_controller.status) {
                  case AnimationStatus.completed:
                    _controller.reverse();
                    break;
                  case AnimationStatus.dismissed:
                    _controller.forward();
                    break;
                  default:
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
