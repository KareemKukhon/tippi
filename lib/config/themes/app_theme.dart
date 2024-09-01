import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tibbi/core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: AppColors.primary,
      hintColor: AppColors.hint,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
          headlineSmall: TextStyle(
            color: AppColors.hint,
            fontSize: 18.sp,
          ),
          titleLarge: TextStyle(
              color: AppColors.text,
              fontSize: 26.sp,
              fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
            color: AppColors.text,
            fontSize: 22.sp,
          ),
          labelLarge: TextStyle(
            color: AppColors.primary,
            fontSize: 22.sp,
          ),
          labelSmall: TextStyle(
            color: AppColors.primary,
            fontSize: 14.sp,
          ),
          bodySmall:
              TextStyle(color: AppColors.hint, fontSize: 14, height: 1.3),
          bodyLarge: TextStyle(
            color: AppColors.text,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            height: 1.3,
            letterSpacing: 0.25,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
            ],
          ),
          bodyMedium:
              TextStyle(color: AppColors.hint, fontSize: 16.sp, height: 1.3)));
}
