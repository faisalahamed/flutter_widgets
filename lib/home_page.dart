import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Home Oage',
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Safe Area'),
              onPressed: () => Navigator.pushNamed(context, '/safearea'),
            ),
            ElevatedButton(
              child: const Text('Expanded'),
              onPressed: () => Navigator.pushNamed(context, '/expanded'),
            ),
            ElevatedButton(
              child: const Text('alert dialog'),
              onPressed: () => Navigator.pushNamed(context, '/alertdialog'),
            ),
            ElevatedButton(
              child: const Text('Align'),
              onPressed: () => Navigator.pushNamed(context, '/align'),
            ),
            ElevatedButton(
              child: const Text('Animated Align'),
              onPressed: () => Navigator.pushNamed(context, '/animatedalign'),
            ),
            ElevatedButton(
              child: const Text('Animated Builder'),
              onPressed: () => Navigator.pushNamed(context, '/animatedbuilder'),
            ),
            ElevatedButton(
              child: const Text('Animated Container'),
              onPressed: () =>
                  Navigator.pushNamed(context, '/animatedcontainer'),
            ),
            ElevatedButton(
              child: const Text('Animated crossfade'),
              onPressed: () =>
                  Navigator.pushNamed(context, '/animatedcrossfade'),
            ),
            ElevatedButton(
              child: const Text('Animated Text Style'),
              onPressed: () =>
                  Navigator.pushNamed(context, '/animateddefaulttextstyle'),
            ),
            ElevatedButton(
              child: const Text('Animated List'),
              onPressed: () => Navigator.pushNamed(context, '/animatedlist'),
            ),
            ElevatedButton(
              child: const Text('Side Transition'),
              onPressed: () => Navigator.pushNamed(context, '/sidetransition'),
            ),
            ElevatedButton(
              child: const Text('Animated Opacity'),
              onPressed: () => Navigator.pushNamed(context, '/animatedopacity'),
            ),
            ElevatedButton(
              child: const Text('Fade Transition'),
              onPressed: () => Navigator.pushNamed(context, '/fadetransition'),
            ),
            ElevatedButton(
              child: const Text('Animated position'),
              onPressed: () => Navigator.pushNamed(context, '/animateposition'),
            ),
            ElevatedButton(
              child: const Text('Animated size'),
              onPressed: () => Navigator.pushNamed(context, '/animatedsize'),
            ),
          ],
        ),
      ),
    );
  }
}
