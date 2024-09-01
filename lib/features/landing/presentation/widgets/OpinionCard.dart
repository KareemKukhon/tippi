import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OpinionCard extends StatelessWidget {
  int rating;
  String name;
  String image;
  String description;
  OpinionCard({
    Key? key,
    required this.rating,
    required this.name,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundImage: AssetImage(image),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: Color.fromARGB(255, 248, 213, 58),
                        size: 20,
                      );
                    }),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF4E545F)),
          )
        ],
      ),
    );
  }
}
