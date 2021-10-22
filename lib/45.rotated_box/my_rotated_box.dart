import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../layout_page.dart';

class MyRotatedBox extends StatelessWidget {
  const MyRotatedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Safe Area',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: const Color(0xFFE8581C),
                    child: const Text('Apartment for rent!'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: const Color(0xFFE8581C),
                      child: const Text('Apartment for rent!'),
                    ),
                  ),
                ),
              ],
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: const Color(0xFFE8581C),
                child: const Text('Apartment for rent!'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
            ),
          ],
        ));
  }
}
