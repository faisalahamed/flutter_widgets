import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyShowHideAnimation extends StatefulWidget {
  const MyShowHideAnimation({Key? key}) : super(key: key);

  @override
  _MyShowHideAnimationState createState() => _MyShowHideAnimationState();
}

class _MyShowHideAnimationState extends State<MyShowHideAnimation> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          controller: scrollController,
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Index $index'),
            );
          }),
      bottomNavigationBar: ScrollToHide(

        controller: scrollController,
        child: BottomNavigationBar(
          backgroundColor: Colors.pink,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          ],
        ),
      ),
    );
  }
}

class ScrollToHide extends StatefulWidget {
  final Widget child;
  final ScrollController controller;
  final Duration duration;
  const ScrollToHide(
      {Key? key,
      required this.controller,
      required this.child,
      this.duration = const Duration(milliseconds: 500)})
      : super(key: key);

  @override
  _ScrollToHideState createState() => _ScrollToHideState();
}

class _ScrollToHideState extends State<ScrollToHide> {
  bool isVisible = true;

  @override
  void initState() {
    widget.controller.addListener(listen);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(listen);
    super.dispose();
  }

  void listen() {
    final direction = widget.controller.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!isVisible) {
      setState(() {
        isVisible = true;
      });
    }
  }

  void hide() {
    if (isVisible) {
      setState(() {
        isVisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? kBottomNavigationBarHeight : 0,
      
      child: Wrap(
        children: [
          widget.child,
        ],
      ),
    );
  }
}
