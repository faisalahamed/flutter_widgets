import 'package:flutter/material.dart';
import 'package:flutter_widets/1.safe_area/safe_area.dart';
import 'package:flutter_widets/16.nested_scroll_view/my_nested_scroll_view.dart';
import 'package:flutter_widets/17.animated_widget/my_animated_widget.dart';
import 'package:flutter_widets/18.app_bar/my_appbar.dart';
import 'package:flutter_widets/19.aspect_ratio/my_aspect_ratio.dart';
import 'package:flutter_widets/2.expanded/my_expanded.dart';
import 'package:flutter_widets/20.auto_complete/my_auto_complete.dart';
import 'package:flutter_widets/21.base_line/my_base_line.dart';
import 'package:flutter_widets/22.bottom_navigation/my_bottom_navigation.dart';
import 'package:flutter_widets/3.alert_dialog/my_alertdialog.dart';
import 'package:flutter_widets/4.align/my_align.dart';

import '10.animated_list/my_animated_list.dart';
import '11.side_transition/my_side_transition.dart';
import '12.animated_opacity/animated_opacity.dart';
import '13.fade_transition/my_fade_transition.dart';

import '14.animated_positioned/my_animated_positioned.dart';
import '15.animated_size/animated_size.dart';
import '5.animated_align/my_animated_align.dart';
import '6.animated_builder/my_animated_builder.dart';
import '7.animated_container/my_animated_container.dart';
import '8.animated_crossfade/my_animated_crossfade.dart';
import '9.animated_default_textstyle/my_animated_default_textstyle.dart';
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
        '/animatedbuilder': (context) => const MyAnimateBuilder(),
        '/animatedcontainer': (context) => const MyAnimatedContainer(),
        '/animatedcrossfade': (context) => const MyAnimatedCrossfade(),
        '/animateddefaulttextstyle': (context) =>
            const MyAnimatedDefaultTextStyle(),
        '/animatedlist': (context) => const MyAnimatedList(),
        '/sidetransition': (context) => const MySideTransition(),
        '/animatedopacity': (context) => const MyAnimatedOpacity(),
        '/fadetransition': (context) => const MyFadeTransition(),
        '/animateposition': (context) => const MyAnimatedPositioned(),
        '/animatedsize': (context) => const MyAnimatedSize(),
        '/nestedscrollview': (context) => const MyNestedScrollview(),
        '/animatedwidet': (context) => const MyAnimatedWidget(),
        '/myappbar': (context) => const MyAppBar(),
        '/aspectratio': (context) => const MyAspectRatio(),
        '/autocomplete': (context) => const MyAutoComplete(),
        '/baseline': (context) => const MyBaseLine(),
        '/botttomnavigation': (context) => const MyBottomNavigation(),
      },
    );
  }
}
