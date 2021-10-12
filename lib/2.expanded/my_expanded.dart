import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({Key? key}) : super(key: key);

//Expanded A widget that expands a child of a Row, Column, or Flex.

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Expanded',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text('welcome to expanded'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: Text(
                      'welcome to expanded welcome to expanded welcome to expanded welcome to expanded'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  child: Text('welcome to expanded'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
