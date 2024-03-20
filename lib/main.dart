import 'package:ecommercecourse/binding.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/localiazation/changelocal.dart';
import 'package:ecommercecourse/core/localiazation/translation.dart';
import 'package:ecommercecourse/routes.dart';
import 'package:ecommercecourse/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommercecourse/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommercecourse/view/screen/auth/language.dart';
import 'package:ecommercecourse/view/screen/auth/signup.dart';
import 'package:ecommercecourse/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommercecourse/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/services/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InitialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,

      // routes: routes,
      getPages: routes,
      initialBinding: MyBinding(),
    );
  }
}
