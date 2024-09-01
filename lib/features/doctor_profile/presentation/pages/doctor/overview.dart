import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/ProfileInformation.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/appointments.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/patients.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/customSegment.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/doctorInfoCard.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class DoctorProfileOverview extends StatelessWidget {
  DoctorProfileOverview({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(scaffoldKey: _scaffoldKey),
              SizedBox(height: 20.h),
              CustomSegmentedControl(
                segments: ["Overview", "Appointments", "Patients", "profile"],
                onSegmentChanged: (value) {
                  value == 1
                      ? Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Appointments(),
                        ))
                      : value == 2
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Patients(),
                            ))
                          : Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProfileInformation(),
                            ));
                },
              ),
              SizedBox(height: 20.h),
              DoctorInfoCard(name: "Dr. Amelia Thompson"),
              SizedBox(height: 50.h),
              Text(
                "About of Amelia Thompson",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 50.h),
              Text("Education", style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: 50.h),
              Text("Experience", style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: 50.h),
            ],
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
