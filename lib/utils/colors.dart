import 'package:flutter/material.dart';

class AppColors {
  //primary colors
  static const Color kBgColor = Color(0xFF202326);
  static const Color kPrimaryColor = Color.fromARGB(255, 2, 55, 109);
  static const Color kblue = Colors.blue;
  static Color kCardColor = const Color(0xFF2F3235);
  static Color kWhiteColor = Colors.white;

  //gradient colors
  static const int gradientStart = 0xff01f0ff;
  static const int gradientEnd = 0xff4441ed;

  LinearGradient kPrimaryGradient = const LinearGradient(
      colors: [Color(gradientStart), Color(gradientEnd)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
