import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextArea extends StatelessWidget {
  String hint;
  TextArea({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(10.0)),
      child: TextFormField(
        maxLines: null,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: hint),
      ),
    );
  }
}
