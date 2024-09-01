import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';
import 'package:tibbi/features/landing/presentation/widgets/HomePageServiceCard.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: ListView(
        children: [
          AppBarWidget(scaffoldKey: _scaffoldKey),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Column(
              children: [
                HomePageServiceCard(
                  title: 'Appointment Booking',
                  description:
                      'Tibbi provides a mechanism for patients to book appointments with their doctor through the application, so that the doctor sets his working hours for the patient to book accordingly.',
                  numbder: '1',
                  BackgroundColor: Color.fromARGB(56, 250, 183, 26),
                  contentColor: Color(0xFFFEB60D),
                ),
                HomePageServiceCard(
                  title: 'Clinic Management',
                  description:
                      'Tibbi provides the best system for doctors, centers, and pharmacies to manage their accounts, patient files, and sales. The application meets the doctor’s need to communicate with various medical service providers and obtain his patient’s data with ease and speed.',
                  numbder: '2',
                  BackgroundColor: Color.fromARGB(35, 151, 113, 255),
                  contentColor: Color(0xFF9771FF),
                ),
                HomePageServiceCard(
                  title: 'Selling Medicines',
                  description:
                      'Tibbi provides a special platform for pharmacies to display and sell medical products to patients through prescriptions written by the doctor and attached electronically to the patient’s file.',
                  numbder: '3',
                  BackgroundColor: Color.fromARGB(32, 1, 181, 197),
                  contentColor: Color(0xFF01B5C5),
                ),
                HomePageServiceCard(
                  title: 'Medical examinations',
                  description:
                      'Tibbi provides testing centers with a mechanism to upload patient test results, and provides the patient with a mechanism to receive the test result electronically and attach it to the medical file, which makes it easier for any doctor to quickly know the test results.',
                  numbder: '4',
                  BackgroundColor: Color.fromARGB(32, 1, 181, 197),
                  contentColor: Color(0xFF01B5C5),
                ),
                HomePageServiceCard(
                  title: 'X-ray centers',
                  description:
                      'Tibbi provides radiology centers with a mechanism to upload image results to patients, and provides the patient with a mechanism to receive the result electronically and attach it to the medical file, which makes it easy for any doctor to download the image quickly.',
                  numbder: '5',
                  BackgroundColor: Color.fromARGB(56, 250, 183, 26),
                  contentColor: Color(0xFFFEB60D),
                ),
                HomePageServiceCard(
                  title: 'Insurance Providers',
                  description:
                      'Tibbi provides a wide network of health insurance service providers for patients to renew their health insurance and inquire about the insurance and registration mechanism.',
                  numbder: '1',
                  BackgroundColor: Color.fromARGB(35, 151, 113, 255),
                  contentColor: Color(0xFF9771FF),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Footer()
        ],
      ),
    );
  }
}
