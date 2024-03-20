import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/view/screen/auth/login.dart';
import 'package:get/get.dart';

abstract class SucessResetPasswordController extends GetxController {
  gotologin();
}

class SucessResetPasswordControllerImp extends SucessResetPasswordController {
  @override
  gotologin() {
    Get.offNamed(AppRoute.login);
  }
}
