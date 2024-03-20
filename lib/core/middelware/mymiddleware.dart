import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  int? get Priority => 1; // default is -10
  MyServices myservices = Get.find();
  @override
  RouteSettings? redirect(String? Route) {
    if (myservices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
