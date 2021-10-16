import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyAnimatedList extends StatefulWidget {
  const MyAnimatedList({Key? key}) : super(key: key);

  @override
  State<MyAnimatedList> createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList>
    with TickerProviderStateMixin {
  List<String> list = ['Banana', 'Apple', 'Orange'];
  bool isSelected = true;
  late final AnimationController _controller;
  late Animation<Offset> _offset;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _offset = Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
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
            child: AnimatedList(
              initialItemCount: list.length,
              itemBuilder: (BuildContext context, int index,
                  Animation<double> animation) {
                return SlideTransition(
                  position: _offset,
                  child: Text(list[index]),
                );
              },
            ),
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
