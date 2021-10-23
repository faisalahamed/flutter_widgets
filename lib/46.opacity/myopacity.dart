import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyOpacity extends StatefulWidget {
  const MyOpacity({Key? key}) : super(key: key);

  @override
  State<MyOpacity> createState() => _MyOpacityState();
}

class _MyOpacityState extends State<MyOpacity> {
  double op = 1.0;

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Opacity and animated Opacity',
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Opacity(
                opacity: 0.3,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                opacity: op,
                duration: Duration(seconds: 2),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/cat1.jpeg')),
              ),
              Image.asset('assets/images/cat2.jpeg'),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/cat3.jpg',
                        height: 200, width: 200, fit: BoxFit.cover)),
              ),
              FloatingActionButton(onPressed: () {
                setState(() {
                  if (op.toInt() >= 1) {
                    op = 0.3;
                  } else {
                    op = 1;
                  }
                });
              })
            ],
          ),
        ));
  }
}
