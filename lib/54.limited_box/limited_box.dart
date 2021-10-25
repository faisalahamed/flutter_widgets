import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyLimitedBox extends StatelessWidget {
  const MyLimitedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.red,title: Text('true'),),primary: false,body: ListView.builder(itemBuilder: (context, index) {
      return LimitedBox(
        maxHeight: 150,
        child: Container(
          margin: EdgeInsets.all(8),
          color: Colors.redAccent,
        ),
      );
    }));
  }
}
