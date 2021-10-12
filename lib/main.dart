import 'package:flutter/material.dart';
import 'package:flutter_widets/1.safe_area/safe_area.dart';
import 'package:flutter_widets/2.expanded/my_expanded.dart';
import 'package:flutter_widets/3.alert_dialog/my_alertdialog.dart';
import 'package:flutter_widets/4.align/my_align.dart';

import '5.animated_align/my_animated_align.dart';
import '6.animated_builder/my_animated_builder.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/safearea': (context) => const MySafeArea(),
        '/expanded': (context) => const MyExpanded(),
        '/alertdialog': (context) => const MyAlertDialog(),
        '/align': (context) => const MyAlign(),
        '/animatedalign': (context) => const MyAnimatedAlign(),
        // '/animatedbuilder': (context) => const MyAnimateBuilder(),
      },
    );
  }
}
