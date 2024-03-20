import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  gotosignup();
  gotoforgetpassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  gotosignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  gotoforgetpassword() {
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
