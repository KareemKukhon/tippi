import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppBarWidget(scaffoldKey: _scaffoldKey),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About Us',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Welcome to Tibbi, your comprehensive healthcare companion. Tibbi revolutionizes the way you manage your health by seamlessly connecting you with a wide array of medical services. With Tibbi, you can easily book appointments with your private doctor and purchase medications from the nearest pharmacy. Our app also provides access to examination centers, insurance companies, and a complete network of nurses, ensuring you have the support you need at your fingertips. Experience convenience and efficiency in healthcare with Tibbi, where your well-being is our priority.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 100.h),
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
