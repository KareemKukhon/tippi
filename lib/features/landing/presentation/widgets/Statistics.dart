import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Statistic extends StatelessWidget {
  String value;
  String description;
  Color valueColor;
  Statistic({
    Key? key,
    required this.value,
    required this.description,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$value",
            style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 100,
            height: 8,
            decoration: BoxDecoration(
              color: valueColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            description,
            style: TextStyle(color: Color(0xFF4E545F), fontSize: 16.sp),
          )
        ],
      ),
    );
  }
}
