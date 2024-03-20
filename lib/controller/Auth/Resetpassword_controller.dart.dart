import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  ResetPassword();
  gotosucessresetpassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  gotosucessresetpassword() {
    Get.toNamed(AppRoute.sucessresetpassword);
  }

  @override
  ResetPassword() {
    Get.toNamed(AppRoute.verifycode);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
