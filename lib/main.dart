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
import 'package:flutter_widets/23.scrollable_bottom_navigartion/my_scrollable_bottom_navigartion.dart';
import 'package:flutter_widets/24.bottom_sheet.dart/my_bottom_sheet.dart';
import 'package:flutter_widets/25.checkbox/my_checkbox.dart';
import 'package:flutter_widets/26.chip/my_chip.dart';
import 'package:flutter_widets/27.circular_progress_indicator/my_circular_progress_indicator.dart';
import 'package:flutter_widets/28.clipoval/my_clipoval.dart';
import 'package:flutter_widets/29.clip_path/my_clip_path.dart';
import 'package:flutter_widets/3.alert_dialog/my_alertdialog.dart';
import 'package:flutter_widets/30.clip_rect/my_cliprect.dart';
import 'package:flutter_widets/31.clip_r_rect/my_clip_r_rect.dart';
import 'package:flutter_widets/32.constrain_box/my_constrain_box.dart';
import 'package:flutter_widets/33.sliver_and_custom_scrollview/my_customscroll_view.dart';
import 'package:flutter_widets/34.decorated_box_transition/my_decorated_box_transition.dart';
import 'package:flutter_widets/35.staggered_animation/staggered_animation.dart';
import 'package:flutter_widets/36.hide_floatingactionbutton/hide_floating_actionbutton.dart';
import 'package:flutter_widets/37.hide_bottom_navigation_bar/hide_bottom_navigation_bar.dart';
import 'package:flutter_widets/38.show_hide_animation/show_hide_animation.dart';
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
        '/scrollablebotttomnavigation': (context) =>
            const MyScrollableBottomNavigation(),
        '/bottomsheet': (context) => const MyBottomSheet(),
        '/checkbox': (context) => const MyCheckbox(),
        '/chip': (context) => const MyChip(),
        '/circularprogressindicator': (context) =>
            const MyCircularProgressIndicator(),
        '/clipoval': (context) => const MyClipOval(),
        '/clippath': (context) => const MyClipPath(),
        '/cliprect': (context) => const MyClipRect(),
        '/cliprrect': (context) => const MyClipRRect(),
        '/constrainbox': (context) => const MyConstrainBox(),
        '/customscrollview': (context) => const MyCustomScrollView(),
        '/decoratedboxtransition': (context) => const MyDecoratedBoxTransition(),
        '/staggeredanimation': (context) => const MyStaggeredAnimation(),
        '/HideFloatingButton': (context) => const HideFloatingActionButton(),
        '/hidebottomnavigation': (context) => const HideBottomNavigationBar(),
        '/showhideanimation': (context) => const MyShowHideAnimation(),
      },
    );
  }
}
