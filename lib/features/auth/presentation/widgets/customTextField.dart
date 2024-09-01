import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthCustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final TextInputType type;
  final Function(String)? onChange;
  final void Function(String?)? onSaved;
  final Function()? onEditingComplete;

  AuthCustomTextField(
      {Key? key,
      required this.text,
      required this.controller,
      this.type = TextInputType.text,
      this.onChange,
      this.onEditingComplete,
      this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        textInputAction: TextInputAction.next,
        // cursorColor: kPrimaryColor,
        onSaved: onSaved,
        onEditingComplete: onEditingComplete,
        onChanged: onChange, // Pass the onChange function here
        decoration: InputDecoration(
          hintText: text,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
