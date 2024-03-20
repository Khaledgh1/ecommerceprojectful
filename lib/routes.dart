import 'package:ecommercecourse/core/middelware/mymiddleware.dart';
import 'package:ecommercecourse/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommercecourse/view/screen/auth/language.dart';
import 'package:ecommercecourse/view/screen/auth/login.dart';
import 'package:ecommercecourse/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommercecourse/view/screen/auth/signup.dart';
import 'package:ecommercecourse/view/screen/auth/sucesssignup.dart';
import 'package:ecommercecourse/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommercecourse/view/screen/auth/verifycodesignup.dart';
import 'package:ecommercecourse/view/screen/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'core/constant/routes.dart';
import 'view/screen/auth/sucessresetpassword.dart';

List<GetPage<dynamic>>? routes = [
    GetPage(name: "/", page: () => const Language(),middlewares:[MyMiddleware()]),

  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name:AppRoute.forgetpassword,page: () => const ForgetPassword()),
  GetPage(name:AppRoute.resetpassword ,page: () => const ResetPassword()),
   GetPage(name:AppRoute.verifycode,page:  () => const VerifyCode()),
  GetPage(name:AppRoute.verifycodesignup,page: () => const VerifyCodeSignUp()),

  //OnBoarding
  GetPage(name: AppRoute.onBoarding,page: () => onboarding()),

  //Sucess
  GetPage(name: AppRoute.sucessresetpassword,page: () => const SucessResetPassword()),
  GetPage(name:AppRoute.sucesssignup,page: () => const SucessSignUp())
  
];

