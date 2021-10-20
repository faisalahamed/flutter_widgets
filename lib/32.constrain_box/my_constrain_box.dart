import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyConstrainBox extends StatelessWidget {
  const MyConstrainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'constrainbox',
      body: Container(
        height: 300,
        width: 300,
        color: Colors.yellow,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15)),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 150),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) => Colors.red)),
                child: Text('hello how are you'),
                onPressed: () {
                  print('click');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
