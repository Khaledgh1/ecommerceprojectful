import 'package:ecommercecourse/core/constant/routes.dart';
import 'package:ecommercecourse/view/screen/auth/login.dart';
import 'package:get/get.dart';

abstract class SucessSignUpController extends GetxController {
  gotologin();
}

class SucessSignUpControllerImp extends SucessSignUpController {
  @override
  gotologin() {
    Get.offNamed(AppRoute.login);
  }
}
