import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tibbi/config/themes/app_theme.dart';
import 'package:tibbi/features/auth/presentation/pages/Login.dart';
import 'package:tibbi/features/doctor_profile/presentation/blocs/profileProvider.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/ProfileInformation.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/addPatient.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/appointments.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/overview.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/patients.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/bookAppointment.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/patient/profile.dart';
import 'package:tibbi/features/landing/presentation/blocs/UiProvider.dart';
import 'package:tibbi/features/landing/presentation/pages/FindDoctor.dart';
import 'package:tibbi/features/landing/presentation/pages/LandingPage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UiProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Tippi',
          theme: appTheme(),
          home: LandingPage(
              // image: "assets/images/tippi_doctor1.png",
              // name: "ahmed",
              ),
          routes: {
            '/landing': (context) => LandingPage(),
            '/find-doctor': (context) => FindDoctor(),
            '/login': (context) => Login(),
          },
        );
      },
    );
  }
}
