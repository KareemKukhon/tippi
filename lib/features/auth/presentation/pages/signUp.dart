import 'dart:developer';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/features/auth/presentation/pages/Login.dart';
import 'package:tibbi/features/auth/presentation/widgets/customRadio.dart';
import 'package:tibbi/features/auth/presentation/widgets/customTextField.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<String> Gender = ['male', 'female'];
  String? _selectedGender = null;
  int _value = 0;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confermPasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  final TextEditingController RoleController = TextEditingController();
  String? selectedValue;
  String countryCode = '+097';
  final List<String> items = [
    'Doctor',
    'Patient',
    'Midical Center',
    'Pharmacy',
  ];

  // Holds the selected gender value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 50.h, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.h),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AuthCustomTextField(
                          text: "User Name", controller: _nameController),
                      SizedBox(
                        height: 15.h,
                      ),
                      AuthCustomTextField(
                        text: "Email",
                        controller: _emailController,
                        type: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      IntlPhoneField(
                        disableLengthCheck: true,
                        controller: _phoneController,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Theme.of(context).hintColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        languageCode: 'en-US',
                        initialCountryCode: '+966',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                          countryCode = phone.countryCode;
                        },
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        // padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Color(0xFFEAEAEA)),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            // iconStyleData:
                            //     IconStyleData(icon: Icon(Icons.location_city)),
                            isExpanded: true,
                            hint: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Doctor',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                            ),
                            items: items
                                .map((item) => DropdownMenuItem(
                                      // alignment: Alignment.centerRight,
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: AuthCustomTextField(
                            text: "Password", controller: _passwordController),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: AuthCustomTextField(
                            text: "Pasword Confirmation",
                            controller: _confermPasswordController),
                      ),
                      SizedBox(height: 15.h),
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
                          SizedBox(
                              width: 20.0.w), // Add spacing between elements
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
                      Container(
                        margin: EdgeInsets.only(top: 50.h),
                        height: 54.h,
                        width: double.infinity,
                        child: CustomButton(onPressed: () {}, text: "Sign up"),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: "Portada ARA",
                                fontWeight: FontWeight.w600,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
                              },
                              child: Text(
                                "Sign In",
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
