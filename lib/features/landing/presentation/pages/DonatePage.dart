import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class DonatePage extends StatelessWidget {
  DonatePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                AppBarWidget(scaffoldKey: _scaffoldKey),
                SizedBox(height: 100.h),
                Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Donate.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(height: 25.h),
                Text(
                    'Empower health, transform lives. Your donation makes a difference.'),
                SizedBox(height: 30.h),
                CustomButton(onPressed: () {
                  
                }, text: "Donate"),
                SizedBox(height: 100.h)
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
