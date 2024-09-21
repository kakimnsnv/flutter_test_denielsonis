import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test_denielsonis/core/styles/colors.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.orange,
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.all(16).r,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8).r, borderSide: BorderSide(color: primaryColor, width: 1)),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8).r, borderSide: BorderSide(color: primaryColor, width: 1)),
    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8).r, borderSide: BorderSide(color: primaryColor, width: 1)),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8).r, borderSide: BorderSide(color: primaryColor, width: 1)),
    focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8).r, borderSide: BorderSide(color: primaryColor, width: 1)),
    iconColor: primaryColor,
    prefixIconColor: primaryColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStateProperty.all(EdgeInsets.zero),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: textButtonColor,
        ),
      ),
      foregroundColor: WidgetStateProperty.all(textButtonColor),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.white),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: WidgetStateProperty.all(Colors.orange),
      padding: WidgetStateProperty.all(const EdgeInsets.all(15).r),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8).r,
        ),
      ),
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
    bodySmall: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
    titleLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
    titleMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
    labelLarge: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
    labelMedium: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
    labelSmall: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: primaryColor,
    unselectedItemColor: Colors.grey,
    elevation: 0,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
  ),
);
