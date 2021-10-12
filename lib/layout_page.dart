import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  final String pageTitle;
  final Widget body;
  const MyLayout({Key? key, required this.pageTitle, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent[100],
        child: body,
      ),
    );
  }
}
