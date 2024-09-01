import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tibbi/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  void Function() onPressed;
  String text;
  CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ));
  }
}
