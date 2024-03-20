import 'package:ecommercecourse/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDislay",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 30, color: AppColor.secondColor, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        fontSize: 26, color: AppColor.black, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17),
  ),
  primarySwatch: Colors.blue
);


ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 30, color: AppColor.secondColor, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        fontSize: 26, color: AppColor.black, fontWeight: FontWeight.bold),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17),
  ),
  primarySwatch: Colors.blue
);