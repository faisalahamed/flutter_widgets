import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../layout_page.dart';

class MyAutoComplete extends StatelessWidget {
  const MyAutoComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      pageTitle: 'Auto Complete Builder',
      body: MyAutoCompleteBuilder(),
    );
  }
}

class MyAutoCompleteBuilder extends StatelessWidget {
  const MyAutoCompleteBuilder({Key? key}) : super(key: key);

  static final List<User> _userOptions = <User>[
    User(name: 'Alice', email: 'alice@example.com'),
    User(name: 'Bob', email: 'bob@example.com'),
    User(name: 'Charlie', email: 'charlie123@gmail.com'),
    User(name: 'faisal', email: 'charlie123@gmail.com'),
  ];

  static String _displayStringForOption(User option) => option.name;
  @override
  Widget build(BuildContext context) {
    return Autocomplete<User>(
      fieldViewBuilder: (BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted) {
        return TextFormField(
          style: TextStyle(fontSize: 28),
          decoration: InputDecoration(
              // errorText: 'error',
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(35)),
              
              focusColor: Colors.pink,
              fillColor: Colors.yellow,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.green))),
          obscureText: true,
          controller: textEditingController,
          focusNode: focusNode,
          onFieldSubmitted: (String value) {
            // print(value);
            onFieldSubmitted();
          },
        );
      },
      displayStringForOption: _displayStringForOption,
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<User>.empty();
        }
        return _userOptions.where((element) =>
            element.toString().contains(textEditingValue.text.toLowerCase()));
      },
    );
  }
}

class User {
  String name;
  String email;
  User({required this.name, required this.email});
  @override
  String toString() {
    // TODO: implement toString
    return '$name, $email';
  }
}
