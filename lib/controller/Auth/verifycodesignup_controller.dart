import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  gotosucesssignup();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifycode;
  @override
  gotosucesssignup() {
    Get.toNamed(AppRoute.sucesssignup);
  }

  @override
  checkCode() {
  }

  @override
  void onInit() {
    super.onInit();
  }
}
