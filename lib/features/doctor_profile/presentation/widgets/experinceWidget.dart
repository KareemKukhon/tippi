import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:tibbi/core/common_widgets/CustomTextFeild.dart';
import 'package:tibbi/features/doctor_profile/presentation/blocs/profileProvider.dart';
import 'package:tibbi/features/doctor_profile/presentation/widgets/datePicker.dart';

class ExperinceWidget extends StatelessWidget {
  final Function(BuildContext context, bool isStartDate) selectDate;
  ExperinceWidget({
    Key? key,
    required this.selectDate,
  }) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Starting Date",
                style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
                onTap: () => selectDate(context, true),
                child: CustomDatePicker(
                  hint: "01/01/2022",
                )),
            SizedBox(
              height: 20.h,
            ),
            Text("Position", style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(width: 165.w, child: CustomTextField(hint: "dentest")),
            SizedBox(
              height: 10.h,
            ),
            IconButton(
                color: Colors.red,
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size?>(Size(34, 34)),
                    backgroundColor:
                        MaterialStateProperty.all<Color?>(Color(0XFFDC2626))),
                onPressed: () {
                  Provider.of<ProfileProvider>(context, listen: false)
                      .removeExperinceWidget(this);
                },
                icon: Icon(
                  Icons.delete_outline_outlined,
                  color: Colors.white,
                  size: 18,
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ending Date", style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
                onTap: () => selectDate(context, false),
                child: CustomDatePicker(
                  hint: "20/12/2024",
                )),
            SizedBox(
              height: 20.h,
            ),
            Text("Hospital/Clinic",
                style: Theme.of(context).textTheme.bodyMedium),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(width: 165.w, child: CustomTextField(hint: "")),
          ],
        ),
      ],
    );
  }
}
