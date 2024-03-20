import 'package:ecommercecourse/core/services/services.dart';
import 'package:ecommercecourse/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';

abstract class OnBoardingController extends GetxController {
  next();
  OnPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentpage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onboardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  OnPageChanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
