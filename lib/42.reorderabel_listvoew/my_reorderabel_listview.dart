import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyReorderableList extends StatefulWidget {
  const MyReorderableList({Key? key}) : super(key: key);

  @override
  State<MyReorderableList> createState() => _MyReorderableListState();
}

class _MyReorderableListState extends State<MyReorderableList> {
  List<Widget> _list = [
    ListTile(
      key: ValueKey('one'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text('one'),
    ),
    ListTile(
      key: ValueKey('three'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text('three'),
    ),
    ListTile(
      key: ValueKey('two'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text('two'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Tap hold a item to re order the list',
      body: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            var item = _list.removeAt(oldIndex);
            _list.insert(newIndex, item);
          });
        },
        children: _list,
      ),
    );
  }
}
