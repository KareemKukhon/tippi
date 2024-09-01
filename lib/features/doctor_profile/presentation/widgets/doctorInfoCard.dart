import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorInfoCard extends StatelessWidget {
  String name;
  DoctorInfoCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 150.w,
            height: 200.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tippi_doctor1.png'),
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.h),
                  color: Color(0xFFCCF0F3),
                ),
                child: Text('dentist',
                    style:
                        TextStyle(fontSize: 12.sp, color: Color(0XFF0067FF))),
              ),
              SizedBox(height: 10.h),
              Row(children: [
                Icon(Icons.star_rate_rounded,
                    color: Color.fromARGB(255, 248, 213, 58)),
                Text('4.4 '),
                SizedBox(width: 5.w),
                Text('(5)', style: Theme.of(context).textTheme.bodySmall),
              ]),
              SizedBox(height: 10.h),
              Text(
                'Dr.Nasser Sayeh, graduated from NNU in 2015 and has his PHD as a dentist',
                maxLines: null,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 10.h),
              Text(
                'Mobile: 0567600951',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 10.h),
              Text(
                'Address:nablus',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
