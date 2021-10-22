import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideFloatingActionButton extends StatefulWidget {
  const HideFloatingActionButton({Key? key}) : super(key: key);

  @override
  _HideFloatingActionButtonState createState() =>
      _HideFloatingActionButtonState();
}

class _HideFloatingActionButtonState extends State<HideFloatingActionButton> {
  late ScrollController _scrollController;
  bool scrollStatus = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hide floating action button on scroll'),
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (scrollNotification) {
          setState(() {
            if (scrollNotification.direction == ScrollDirection.forward) {
              scrollStatus = false;
            }
            if (scrollNotification.direction == ScrollDirection.reverse) {
              scrollStatus = true;
            }
          });

          return true;
        },
        child: ListView.builder(
            itemCount: 130,
            controller: _scrollController,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item ${index + 1}'),
              );
            }),
      ),
      floatingActionButton: scrollStatus
          ? FloatingActionButton(
              onPressed: () {
                _scrollController
                    .jumpTo(_scrollController.position.maxScrollExtent);
              },
              child: Icon(Icons.arrow_downward_rounded),
            )
          : FloatingActionButton(
            backgroundColor: Colors.pink,
              onPressed: () {
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              },
              child: Icon(Icons.arrow_upward_rounded),
            ),
    );
  }
}
