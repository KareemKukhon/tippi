import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  CustomTextField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          hintStyle: Theme.of(context).textTheme.headlineSmall,
          hintText: hint),
    );
  }
}
