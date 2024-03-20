import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  ForgetPassword();
  gotoverifycode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  gotoverifycode() {
    Get.toNamed(AppRoute.verifycode);
  }

  @override
  ForgetPassword() {
    Get.toNamed(AppRoute.forgetpassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
