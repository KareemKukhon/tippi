import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/ProfileInformation.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/appointments.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/overview.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/customSegment.dart';

class Patients extends StatelessWidget {
  Patients({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      key: _scaffoldKey,
      body: ListView(
        children: [
          AppBarWidget(scaffoldKey: _scaffoldKey),
          SizedBox(height: 40.h),
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
                                  ? Navigator.of(context)
                                      .push(MaterialPageRoute(
                                      builder: (context) => Appointments(),
                                    ))
                                  :  Navigator.of(context)
                                          .push(MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileInformation(),
                                        ));
                        },
                      ),
                  SizedBox(height: 20.h),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "Add Patient",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 18.sp),
                  )
                ],
              )),
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'GENDER',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'MOBILE',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'LOCATION',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Sarah')),
                  DataCell(Text('19')),
                  DataCell(Text('Student')),
                  DataCell(Text('19')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                  DataCell(Text('19')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                  DataCell(Text('19')),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
