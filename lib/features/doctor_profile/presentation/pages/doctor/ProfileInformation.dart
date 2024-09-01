import 'dart:collection';
import 'dart:developer';
import 'dart:io';

import 'package:day_picker/day_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/common_widgets/CustomTextFeild.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/core/common_widgets/TextArea.dart';
import 'package:tibbi/features/auth/presentation/widgets/customRadio.dart';
import 'package:tibbi/features/doctor_profile/data/data_sources/doctor_profile_data_source.dart';
import 'package:tibbi/features/doctor_profile/presentation/blocs/profileProvider.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/appointments.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/overview.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/patients.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/ExperinceWidget.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/customSegment.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/customTimePicker.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/qualificationWidget.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class ProfileInformation extends StatefulWidget {
  ProfileInformation({super.key});

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  List<String> Gender = ['male', 'female'];
  Map<String, List<String>> timeSlots = new HashMap<String, List<String>>();

  String? _selectedGender = null;
  String? selectedValue;
  final List<String> items = [
    'Surgeon',
    'Neurologist',
    'Dermatologist',
    'dentist',
  ];
  DateTime selectedStartDate = DateTime.now();
  DateTime selectedEndDate = DateTime.now();

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? selectedStartDate : selectedEndDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (isStartDate) {
          selectedStartDate = picked;
          log(selectedStartDate.toString());
        } else {
          log(selectedEndDate.toString());
          selectedEndDate = picked;
        }
      });
    }
  }

  // Future<void> _selectTime(
  //     BuildContext context, String day, bool isStartTime) async {
  //   final TimeOfDay? picked = await showTimePicker(
  //     context: context,
  //     initialTime: TimeOfDay.now(),
  //   );
  //   if (picked != null && picked != _selectedStartTime) {
  //     setState(() {
  //       if (isStartTime)
  //         _selectedStartTime = picked;
  //       else {
  //         _selectedEndTime = picked;
  //       }
  //       timeSlots[day] = [
  //         "${_selectedStartTime?.format(context)}, ${_selectedEndTime?.format(context)}"
  //       ];
  //       log("message: ${timeSlots}");
  //     });
  //   }
  // }

  late DoctorProfileDataSource dataSource;
  @override
  void initState() {
    dataSource = DoctorProfileDataSourceImpl();
    List<DayInWeek> availableDays = dataSource.getAvailableDays();
  }

  int _value = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,
      body: Consumer<ProfileProvider>(
        builder: (context, provider, child) => ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(scaffoldKey: _scaffoldKey),
                  SizedBox(height: 20.h),
                  CustomSegmentedControl(
                    segments: [
                      "Overview",
                      "Appointments",
                      "Patients",
                      "profile"
                    ],
                    onSegmentChanged: (value) {
                      value == 0
                          ? Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DoctorProfileOverview(),
                            ))
                          : value == 1
                              ? Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Appointments(),
                                ))
                              : Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Patients(),
                                ));
                    },
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Profile Information",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      provider.fetchImage();
                    },
                    child: provider.image != null
                        ? CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                FileImage(File(provider.image!.path)),
                          )
                        : CircleAvatar(
                            radius: 40,
                            child: Icon(Icons.person, size: 40),
                          ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text('Name', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hint: "Ahmed",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Email', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hint: "example@example.com",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Phone', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hint: "0097056799999",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Bio', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hint: "Bio",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
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
                      SizedBox(width: 20.0.w), // Add spacing between elements
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
                  SizedBox(
                    height: 20.h,
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
                            'Surgeon',
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
                    height: 20.h,
                  ),
                  Text('Ticket Price',
                      style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextField(
                    hint: "100 Shekel",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Qualifications',
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(
                    height: 10.h,
                  ),
                  ...provider.qualifications,
                  CustomButton(
                      onPressed: () {
                        provider.addQualificationWidget(Qualification(
                          selectDate: _selectDate,
                        ));
                      },
                      text: "add Qualification"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Experince',
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(
                    height: 10.h,
                  ),
                  ...provider.experince,
                  CustomButton(
                      onPressed: () {
                        provider.addExperinceWidget(ExperinceWidget(
                          selectDate: _selectDate,
                        ));
                      },
                      text: "add Experince"),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Day Slots',
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SelectWeekDays(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      days: dataSource.getAvailableDays(),
                      border: false,
                      boxDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          colors: [
                            Theme.of(context).primaryColor,
                            Colors.black45
                          ],
                          tileMode: TileMode
                              .repeated, // repeats the gradient over the canvas
                        ),
                      ),
                      onSelect: (values) {
                        // <== Callback to handle the selected days
                        print(values);

                        provider.addDay(values, context);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Time Slots',
                      style: Theme.of(context).textTheme.bodyLarge),
                  SizedBox(
                    height: 10.h,
                  ),
                  ...List.generate(provider.days.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${provider.days[index]}:",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          InkWell(
                              onTap: () => provider.selectTime(
                                  context, provider.days[index], true),
                              child: CustomTimePicker(
                                hint:
                                    "${provider.timeSlots[provider.days[index]]![0] ?? ""}",
                              )),
                          Text(
                            "to",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          InkWell(
                              onTap: () => provider.selectTime(
                                  context, provider.days[index], false),
                              child: CustomTimePicker(
                                hint:
                                    "${provider.timeSlots[provider.days[index]]?[1] ?? ""}",
                              )),
                        ],
                      ),
                    );
                  }),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text('About', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextArea(hint: "Write about yourself"),
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 390.w,
                    height: 50.h,
                    child: CustomButton(
                        onPressed: () {
                          provider.addExperinceWidget(ExperinceWidget(
                            selectDate: _selectDate,
                          ));
                        },
                        text: "Add TimeSlot"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
