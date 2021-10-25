import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        elevation: 0.0,
      ),
      drawer: SafeArea(
        child: Drawer(
          elevation: 0.0,
          child: ListView(
            children: [
              DrawerHeader(
                duration: Duration(seconds: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    Text('Welcome')
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  // backgroundBlendMode: BlendMode.colorBurn,
                  // boxShadow: [
                  //   BoxShadow(blurRadius: 25),
                  //   BoxShadow(color: Colors.pink.withOpacity(.4)),
                  // ],
                ),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text('index $index'));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
