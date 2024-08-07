import 'package:flutter/material.dart';
import 'AppColor.dart';


class AppTheme {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColor.backgroundColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColor.blackColor
        ),
        titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColor.fontLight
        ),
        titleSmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColor.fontLight
        )
    ),
  );
}