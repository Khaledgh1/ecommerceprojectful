import 'package:ecommercecourse/core/constant/apptheme.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = themeEnglish;

  changelanguage(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme=langcode=="ar" ? themeArabic:themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar"); // Arabic
      appTheme=themeArabic;

    } else if (sharedPrefLang == "en") {
      language = const Locale("en"); // English
      appTheme=themeEnglish;

    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme=themeEnglish;
    }

    super.onInit();
  }
}
