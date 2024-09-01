import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageServiceCard extends StatelessWidget {
  String title;
  String description;
  String numbder;
  Color contentColor;
  Color BackgroundColor;
  HomePageServiceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.numbder,
    required this.contentColor,
    required this.BackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 35.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              SizedBox(
                height: 20.h,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        border: Border.all()),
                    child: Icon(Icons.arrow_forward),
                  ),
                  Container(
                    width: 45.w,
                    height: 45.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: BackgroundColor),
                    child: Text(
                      numbder,
                      style: TextStyle(color: contentColor, fontSize: 18.sp),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
