import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';

import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/core/variable/var.dart';
import 'package:tibbi/features/auth/presentation/pages/Login.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/overview.dart';
import 'package:tibbi/features/landing/presentation/pages/LandingPage.dart';

class AppBarWidget extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  AppBarWidget({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LandingPage(),
              ));
            },
            child: Container(
              child: Image.asset("assets/images/tippi logo.png"),
            ),
          ),
          Row(
            children: [
              
              !isLogin?
              CustomButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
              text: "Login",
              ):
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorProfileOverview(),));
                },
                child: CircleAvatar(backgroundImage: AssetImage("assets/images/tippi_doctor1.png"),)),
              IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: Icon(Icons.menu))
            ],
          ),
        ],
      ),
    );
  }
}
