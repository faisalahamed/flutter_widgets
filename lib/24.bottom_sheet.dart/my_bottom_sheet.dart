import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Safe Area',
      body: Scaffold(
        body: Column(
          children: [
            TextButton(
              onPressed: () => _showModal(context),
              child: Text('show'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Close'),
            ),
            Text(value)
          ],
        ),
      ),
    );
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              ListTile(
                title: Text('Hello'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    value = 'hello clicked';
                  });
                },
              ),
              ListTile(
                title: Text('Hello2'),
                onTap: () {
                    Navigator.pop(context);
                  setState(() {
                    value = 'hello2 clicked';
                  });
                },
              ),
              ListTile(
                title: Text('Hello3'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    value = 'hello3 clicked';
                  });
                },
              ),
            ],
          );
        });
  }
}
