import 'package:flutter/material.dart';
import 'package:flutter_widets/layout_page.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Alert Dialog',
      body: AlertDialog(
        backgroundColor: Colors.amber[100],
        title: Text('alert dialog title'),
        content: Text('alert diallog content'),
        elevation: 100.0,
        clipBehavior: Clip.hardEdge,
        actions: [
          TextButton(
            onPressed: () => print('done'),
            child: Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: Text('Cancel'),
          )
        ],
      ),
    );
  }
}
