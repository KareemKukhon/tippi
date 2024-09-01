import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/common_widgets/CustomTextFeild.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class BookAppointment extends StatefulWidget {
  BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String? selectedValue;

  final List<String> items = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(scaffoldKey: _scaffoldKey),
                SizedBox(height: 20.h),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Text(
                      "Create an Appointment with Dr ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "Mohammed Kareem",
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomTextField(hint: "Full Name"),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(hint: "Email"),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(hint: "Mobile Number"),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(hint: "Address"),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Color(0xFFEAEAEA)),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      // iconStyleData:
                      //     IconStyleData(icon: Icon(Icons.location_city)),
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sunday',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem(
                                // alignment: Alignment.centerRight,
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextField(hint: "Time"),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                    height: 54.h,
                    width: 390.w,
                    child: CustomButton(onPressed: () {}, text: "Book now")),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: Wrap(
                    children: [
                      Text("Already have an Appointment? ",
                          style: Theme.of(context).textTheme.bodySmall),
                      Text(
                        "Create",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Footer()
        ],
      ),
    );
  }
}
