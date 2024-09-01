import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tibbi/features/landing/presentation/pages/FindDoctor.dart';

class ServiceCard extends StatelessWidget {
  String title;
  String description;
  String imageUrl;
  void Function() onTap;

  ServiceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: 170.w,
            height: 150.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageUrl))),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 25.h,
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all()),
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
