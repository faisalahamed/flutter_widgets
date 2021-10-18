import 'package:flutter/material.dart';

import '../layout_page.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({Key? key}) : super(key: key);

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MyLayout(
        pageTitle: 'Checkbox',
        body: Transform.scale(
          scale: 3,
          child: Checkbox(
            // fillColor: MaterialStateProperty.resolveWith(getColor),
            side: BorderSide(color: Colors.pink),
            checkColor: Colors.red,
            shape: CircleBorder(),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            value: isChecked,
            splashRadius: 30,
            onChanged: (val) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
        ));
  }

  Color getColor(Set<MaterialState> states) {
    Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.selected,
      MaterialState.dragged,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.red;
  }
}
