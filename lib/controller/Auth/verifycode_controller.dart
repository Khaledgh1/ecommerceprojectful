import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  gotoresetpassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;
  @override
  gotoresetpassword() {
    Get.toNamed(AppRoute.resetpassword);
  }

  @override
  checkCode() {
  }

  @override
  void onInit() {
    super.onInit();
  }
}
