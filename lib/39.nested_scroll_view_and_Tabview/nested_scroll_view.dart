import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyNestedScrollView2 extends StatefulWidget {
  const MyNestedScrollView2({Key? key}) : super(key: key);

  @override
  State<MyNestedScrollView2> createState() => _MyNestedScrollView2State();
}

class _MyNestedScrollView2State extends State<MyNestedScrollView2>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(
      vsync: this,
      length: 9,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification) {
          if (ScrollNotification is ScrollEndNotification) {
            print('scroll is ended');
          } else if (ScrollNotification is ScrollStartNotification) {
            print('scroll started');
          }
          return true;
        },
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverAppBar(
                floating: true,
                pinned: true,
                // stretch: true,
                // flexibleSpace: Text('flexible space'),
                foregroundColor: Colors.pink,
                backgroundColor: Colors.yellow,
                // onStretchTrigger: () async {
                //   print('sre');
                // },
                title: Text('Sliver app BAr'),
                bottom: TabBar(
                  indicatorColor: Colors.green,
                  isScrollable: true,
                  controller: _controller,
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _controller,
            children: [
              PageOne(),
              Text('page 2'),
              Text('page 3'),
              PageOne(),
              Text('page 2'),
              Text('page 3'),
              PageOne(),
              Text('page 2'),
              Text('page 3'),
            ],
          ),
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('INDEX $index'),
          );
        });
  }
}
