import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyTabView extends StatefulWidget {
  const MyTabView({Key? key}) : super(key: key);

  @override
  State<MyTabView> createState() => _MyTabViewState();
}

class _MyTabViewState extends State<MyTabView> {
  @override
  void initState() {
    super.initState();

    //for one time animation remove ..repeat and un comment _controller.forward
    // _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.ac_unit),
                ),
                Tab(
                  icon: Icon(Icons.ac_unit),
                ),
                Tab(
                  icon: Icon(Icons.ac_unit),
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('ok')),
                    Center(child: Text('ok')),
                    SingleChildScrollView(
                      child: Text(''' 
                      @override
                              Widget build(BuildContext context) {
                                return DefaultTabController(
                                  length: 3,
                                  child: Container(
                                      child: CustomScrollView(slivers: <Widget>[
                                    SliverAppBar(),
                                    new SliverFillRemaining(
                                      child: TabBarView(
                      children: <Widget>[
                        Text("Tab 1"),
                        Text("Tab 2"),
                        Text("Tab 3"),
                      ],
                                      ),
                                    ),
                                  ])),
                                );
                                @override
                              Widget build(BuildContext context) {
                                return DefaultTabController(
                                  length: 3,
                                  child: Container(
                                      child: CustomScrollView(slivers: <Widget>[
                                    SliverAppBar(),
                                    new SliverFillRemaining(
                                      child: TabBarView(
                      children: <Widget>[
                        Text("Tab 1"),
                        Text("Tab 2"),
                        Text("Tab 3"),
                      ],
                                      ),
                                    ),
                                  ])),
                                );
                              }@override
                              Widget build(BuildContext context) {
                                return DefaultTabController(
                                  length: 3,
                                  child: Container(
                                      child: CustomScrollView(slivers: <Widget>[
                                    SliverAppBar(),
                                    new SliverFillRemaining(
                                      child: TabBarView(
                      children: <Widget>[
                        Text("Tab 1"),
                        Text("Tab 2"),
                        Text("Tab 3"),
                      ],
                                      ),
                                    ),
                                  ])),
                                );
                              }@override
                              Widget build(BuildContext context) {
                                return DefaultTabController(
                                  length: 3,
                                  child: Container(
                                      child: CustomScrollView(slivers: <Widget>[
                                    SliverAppBar(),
                                    new SliverFillRemaining(
                                      child: TabBarView(
                      children: <Widget>[
                        Text("Tab 1"),
                        Text("Tab 2"),
                        Text("Tab 3"),
                      ],
                                      ),
                                    ),
                                  ])),
                                );
                              }
                              }

                              olk
                              olk2
                              olk 3
                      '''),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
