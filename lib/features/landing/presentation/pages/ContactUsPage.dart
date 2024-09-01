import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/common_widgets/AppBar.dart';
import 'package:tibbi/core/common_widgets/CustomButton.dart';
import 'package:tibbi/core/common_widgets/CustomTextFeild.dart';
import 'package:tibbi/core/common_widgets/NavDrawer.dart';
import 'package:tibbi/core/common_widgets/TextArea.dart';
import 'package:tibbi/features/landing/presentation/widgets/Footer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Column(
              children: [
                AppBarWidget(scaffoldKey: _scaffoldKey),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Contact Us",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Got a technical issue? Want to send feedback about a beta feature? Let us know.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Your Email',
                        style: Theme.of(context).textTheme.bodyMedium),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                      hint: "example@example.com",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text('Subject',
                        style: Theme.of(context).textTheme.bodyMedium),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextField(
                      hint: "Let us know how we can help you",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text('Message',
                        style: Theme.of(context).textTheme.bodyMedium),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextArea(hint: 'Leave a message here...'),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomButton(onPressed: () {}, text: "Send")
                  ],
                ))
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
