import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyCustomScrollView extends StatelessWidget {
  const MyCustomScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver App bar'),
            stretch: true,
            onStretchTrigger: () async {
              print('ste');
            },
            floating: true,
            pinned: true,
            expandedHeight: 150,
            collapsedHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              title: Text('My container goes here : with any container'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.all(2.0),
                child: Container(
                  color: Colors.teal[800],
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    leading: Icon(Icons.access_alarm),
                    title: Text('Title: $index'),
                    subtitle: Text('Sub title $index'),
                    trailing: Icon(Icons.accessible_forward),
                  ),
                ),
              );
            }, childCount: 5),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 100,
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              childAspectRatio: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: Colors.amber[100 * ((index + 1) % 8)],
                  child: Text('Grid: $index'),
                );
              },
              childCount: 10,
            ),
          ),
          SliverGrid.count(crossAxisCount: 4, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green[800], child: Text('Hello')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green[800], child: Text('Hello')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green[800], child: Text('Hello')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green[800], child: Text('Hello')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green[800], child: Text('Hello')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.green[800], child: Text('Hello')),
            ),
          ]),
        ],
      ),
    );
  }
}
