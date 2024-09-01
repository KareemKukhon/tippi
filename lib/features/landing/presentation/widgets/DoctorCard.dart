import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/profile.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 190.w,
            height: 250.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/tippi_doctor1.png"))),
          ),
          SizedBox(height: 10.h),
          Text(
            'Dr. Amelia Thompson',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Row(
                children: [
                  Icon(
                    Icons.star_purple500_sharp,
                    color: Color.fromARGB(255, 248, 213, 58),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    '(5)',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "At rafedia clinic",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ViewDoctorProfile(
                        name: "Dr. Amelia Thompson",
                        image: "assets/images/tippi_doctor1.png"),
                  ));
                },
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all()),
                  child: Icon(Icons.arrow_forward),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
