import 'package:flutter/material.dart';
import 'package:tibbi/core/utils/app_colors.dart';
import 'package:tibbi/core/variable/var.dart';
import 'package:tibbi/features/auth/presentation/pages/Login.dart';
import 'package:tibbi/features/landing/presentation/pages/ContactUsPage.dart';
import 'package:tibbi/features/landing/presentation/pages/FindDoctor.dart';
import 'package:tibbi/features/landing/presentation/pages/LandingPage.dart';
import 'package:tibbi/features/landing/presentation/pages/ServicesPage.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/tippi logo.png'))),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppColors.primary,
            ),
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LandingPage(),
              ))
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: AppColors.primary,
            ),
            title: Text(
              'Find a Doctor',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FindDoctor(),
              ))
            },
          ),
          ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: AppColors.primary,
            ),
            title: Text(
              'Services',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ServicesPage(),
              ))
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_support,
              color: AppColors.primary,
            ),
            title: Text(
              'Contact',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ContactUsPage(),
              ))
            },
          ),
          isLogin
              ? ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: AppColors.primary,
                  ),
                  title: Text(
                    'Logout',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ))
                  },
                )
              : Container()
        ],
      ),
    );
  }
}
