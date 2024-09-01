import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/ProfileInformation.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/overview.dart';
import 'package:tibbi/features/doctor_profile/presentation/pages/doctor/patients.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/customSegment.dart';

class Appointments extends StatelessWidget {
  Appointments({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: ListView(
        children: [
          AppBarWidget(scaffoldKey: _scaffoldKey),
          SizedBox(height: 20.h),
          CustomSegmentedControl(
            segments: ["Overview", "Appointments", "Patients", "profile"],
            onSegmentChanged: (value) {
              value == 0
                  ? Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DoctorProfileOverview(),
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
          DataTable(
            headingRowColor:
                MaterialStateProperty.all<Color?>(Colors.grey[100]),
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
                    'STATUS',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'PRICE',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'DAY',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'TIME',
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
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                  DataCell(Text('27')),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
