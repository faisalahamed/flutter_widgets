import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Home Oage',
      body: Column(
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
            onPressed: () => Navigator.pushNamed(context, '/animatedcontainer'),
          ),
          ElevatedButton(
            child: const Text('Animated crossfade'),
            onPressed: () => Navigator.pushNamed(context, '/animatedcrossfade'),
          )
        ],
      ),
    );
  }
}
