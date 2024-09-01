import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionCard extends StatefulWidget {
  String question;
  String answer;
  QuestionCard({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Text(
                widget.question,
                style: Theme.of(context).textTheme.bodyMedium,
              )),
              IconButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Colors.black26,
                        width: 2.0,
                      ),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)))),
                icon: Icon(toggle ? Icons.remove : Icons.add),
                onPressed: () {
                  setState(() {
                    toggle = !toggle;
                  });
                },
              )
            ],
          ),
          toggle ? Text(widget.answer) : Container()
        ],
      ),
    );
  }
}
