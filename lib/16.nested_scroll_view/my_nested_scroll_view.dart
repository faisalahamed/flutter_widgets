import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyNestedScrollview extends StatelessWidget {
  const MyNestedScrollview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Nested Scroll view',
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  floating: true,
                  centerTitle: true,
                  title: Text('app bar'),
                ),
              ],
          body: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Card(child: Text('hello'));
              })),
    );
  }
}
