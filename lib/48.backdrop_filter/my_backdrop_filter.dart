import 'dart:ui';

import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyBackDropFilter extends StatelessWidget {
  const MyBackDropFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'MyBackDropFilter',
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/cat1.jpeg'),
                  Positioned.fill(
                    child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.red.withOpacity(0.3),
                        )),
                  ),
                ],
              ),
              Stack(
                children: [
                  Text('hello i am Faisal',style: TextStyle(fontSize: 28.0),),
                  Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX:1,sigmaY: 2),
                    child: Container(
                      color: Colors.yellow.withOpacity(0.1),
                    ),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
