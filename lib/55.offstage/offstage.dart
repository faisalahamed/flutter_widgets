import 'package:flutter/material.dart';

import '../layout_page.dart';

//widget is there but hidden
class MyOffStage extends StatefulWidget {
  const MyOffStage({Key? key}) : super(key: key);

  @override
  State<MyOffStage> createState() => _MyOffStageState();
}

class _MyOffStageState extends State<MyOffStage> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Offstage(
          offstage: status,
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            status = !status;
          });
        },
        child: Text('H'),
      ),
    );
  }
}
