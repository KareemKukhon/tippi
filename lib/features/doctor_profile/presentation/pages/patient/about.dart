import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/bookAppointment.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80.h,
          ),
          Row(
            children: [
              Text(
                'About of',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                ' Ahmed Mahmoud',
                style: TextStyle(
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF0067FF)),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Dr.Nasser Sayeh, graduated from NNU in 2015 and has his PHD as a dentist. He has his own clinic in Nablus city - city center - Fritekh building 2nd floor. for more info call us at : 0567600951',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Education",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Feb 2, 2010 - Jan 20, 2015',
            style: TextStyle(fontSize: 15.0.sp, color: Color(0XFF0067FF)),
          ),
          Text("PHD"),
          Text(
            "An-Najah University",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Experience",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            width: 390.w,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0XFFFFF9EA),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feb 2015 - Present",
                  style: TextStyle(color: Color(0XFFFEB60D), fontSize: 15.sp),
                ),
                Text("Dentistry"),
                Text(
                  "Nablus city - city center - Fritekh building 2nd floor",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            width: 390.w,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  ),
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ticket Price",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text(
                      "100 shikle",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                    width: double.infinity,
                    height: 54.h,
                    child: CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookAppointment(),
                          ));
                        },
                        text: "Book Appointment"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
