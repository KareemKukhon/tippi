import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomTextFeild.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/auth/presentation/widgets/customRadio.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({super.key});

  @override
  State<AddPatient> createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  List<String> Gender = ['male', 'female'];
  String? _selectedGender = null;
  int _value = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(
                  scaffoldKey: _scaffoldKey,
                ),
                SizedBox(
                  height: 30.h,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Add an ",
                      style: Theme.of(context).textTheme.titleLarge),
                  TextSpan(
                      text: "Patient",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 26.sp))
                ])),
                SizedBox(
                  height: 20.h,
                ),
                Text('Full Name',
                    style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hint: "Ahmed",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Email', style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hint: "example@example.com",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Mobile Number',
                    style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hint: "+097059999999",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('City', style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hint: "Nablus",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadio(
                      filledColor: true,
                      textValue: 'male',
                      value: 2,
                      groupValue: _value,
                      onChange: (int? p0) {
                        setState(() {
                          _value = p0!;
                          _selectedGender = 'male';
                        });
                      },
                    ),
                    SizedBox(width: 20.0.w), // Add spacing between elements
                    CustomRadio(
                      filledColor: true,
                      textValue: 'female',
                      value: 1,
                      groupValue: _value,
                      onChange: (int? p0) {
                        setState(() {
                          _value = p0!;
                          _selectedGender = 'female';
                        });
                      },
                    ),
                  ],
                ),
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
