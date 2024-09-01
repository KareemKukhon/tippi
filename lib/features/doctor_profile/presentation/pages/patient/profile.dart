import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/doctor_profile/presentation/blocs/profileProvider.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/about.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/feedback.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/customSegment.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/doctorInfoCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class ViewDoctorProfile extends StatelessWidget {
  String name;
  String image;
  ViewDoctorProfile({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProfileProvider>(context, 
 listen: false).setSegmentIndex(0); 

    });
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: Consumer<ProfileProvider>(builder: (context, provider, child) {
        return ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppBarWidget(scaffoldKey: _scaffoldKey),
                  SizedBox(height: 20.h),
                  DoctorInfoCard(name: name),
                  SizedBox(height: 10.h),
                  Center(
                    child: CustomSegmentedControl(
                      segments: [
                        'About',
                        'Feedback',
                        '',
                      ],
                      onSegmentChanged: (index) {
                        provider.setSegmentIndex(index);
                      },
                    ),
                  ),
                  provider.segmentIndex == 0 ? About() : FeedbackPage(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
            Footer()
          ],
        );
      }),
    );
  }
}
