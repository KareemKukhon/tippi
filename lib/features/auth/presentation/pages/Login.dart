import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/variable/var.dart';
import 'package:tibbi/features/auth/presentation/pages/signUp.dart';
import 'package:tibbi/features/auth/presentation/widgets/customTextField.dart';
import 'package:tibbi/features/landing/presentation/pages/LandingPage.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String? redirectTo =
        ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset("assets/images/tippi logo.png"),
                radius: 90,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AuthCustomTextField(
                        text: 'email',
                        controller: _emailController,
                        type: TextInputType.emailAddress,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: AuthCustomTextField(
                            text: "Password", controller: passwordController),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          textAlign: TextAlign.left,
                          "Forgget Password ?",
                          style: TextStyle(
                              fontFamily: "Portada ARA",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(19, 169, 179, 1)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 54.h,
                        width: double.infinity,
                        child: CustomButton(
                          onPressed: () async {
                            isLogin = true;
                            if (redirectTo != null)
                              Navigator.pushNamedAndRemoveUntil(
                                  context, redirectTo, (route) => false);
                            else
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/landing', (route) => false);
                          },
                          text: "SignIn",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Did not Sign Up ?",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: "Portada ARA",
                                fontWeight: FontWeight.w600,
                                // color: Color.fromRGBO(19, 169, 179, 1)
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: "Portada ARA",
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(19, 169, 179, 1)),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
