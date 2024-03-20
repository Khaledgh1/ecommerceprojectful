import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  gotoverifycodesignup();
  gotoSignIn();
  gotoforgetpassword();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  gotoforgetpassword() {
    Get.offNamed(AppRoute.forgetpassword);
  }

  @override
  gotoverifycodesignup() {
    Get.offNamed(AppRoute.verifycodesignup);
  }

  @override
  SignUp() {}
  @override
  gotoSignIn() {
    Get.toNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
