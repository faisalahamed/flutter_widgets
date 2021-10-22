import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyRefreshIndicator extends StatelessWidget {
  const MyRefreshIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Refresh Indicator: pull to refresh',
      body: RefreshIndicator(
          backgroundColor: Colors.pink,
          color: Colors.green,
          // edgeOffset: 300,
          // strokeWidth: 12,
          triggerMode:RefreshIndicatorTriggerMode.onEdge ,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('index $index'),
              );
            },
            itemCount: 10,
          ),
          onRefresh: () async {
            return Future.delayed(Duration(seconds: 3));
          }),
    );
  }
}
