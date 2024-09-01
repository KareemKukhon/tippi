import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tibbi/features/auth/presentation/pages/Login.dart';
import 'package:tibbi/features/landing/presentation/pages/AboutUs.dart';
import 'package:tibbi/features/landing/presentation/pages/ContactUsPage.dart';
import 'package:tibbi/features/landing/presentation/pages/DonatePage.dart';
import 'package:tibbi/features/landing/presentation/pages/FindDoctor.dart';
import 'package:tibbi/features/landing/presentation/pages/FindPharmacy.dart';
import 'package:tibbi/features/landing/presentation/pages/LandingPage.dart';
import 'package:tibbi/features/landing/presentation/pages/ServicesPage.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460.h,
      color: Color.fromRGBO(243, 244, 246, 1),
      child: Column(
        children: [
          SizedBox(
            height: 35.h,
          ),
          Center(
            child: Image.asset("assets/images/tippi logo.png"),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Tibbi App is provides you with the widest and most optimal network for taking care of your health",
              style: TextStyle(
                  color: Color.fromARGB(255, 103, 116, 134),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                  child: Text(
                    "About",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        // fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LandingPage()));
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServicesPage()));
                  },
                  child: Text(
                    "Services",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FindDoctor()));
                  },
                  child: Text(
                    "Find Doctor",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                  },
                  child: Text(
                    "Request an Appointment",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FindPharmacy(),
                    ));
                  },
                  child: Text(
                    "Pharmacies",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DonatePage(),
                    ));
                  },
                  child: Text(
                    "Donate",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactUsPage(),
                    ));
                  },
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Color.fromARGB(255, 52, 59, 68),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  )),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
