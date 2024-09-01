import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/bookAppointment.dart';

class FeedbackPage extends StatelessWidget {
  FeedbackPage({super.key});
  int rating = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          Text(
            "All reviews (5)",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://example.com/image1.jpg"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nasser",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "August 12, 2022",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "This app is really good!",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating ? Icons.star : Icons.star_rate_rounded,
                    color: Colors.blue,
                    size: 20,
                  );
                }),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Center(
            child: SizedBox(
              height: 50.h,
              child: CustomButton(
                onPressed: () {},
                text: "Give Feedback",
              ),
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
