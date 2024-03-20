import 'package:ecommercecourse/controller/Auth/login_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/functions/alertexitapp.dart';
import 'package:ecommercecourse/core/functions/validinput.dart';
import 'package:ecommercecourse/view/screen/auth/LogoAuth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtexttitleauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "9".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
        ),
        body: WillPopScope(
            onWillPop: alerrtExitApp,
            child: Center(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(
                      text: "10".tr,
                    ),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(
                      text: "11".tr,
                    ),
                    const SizedBox(height: 25),
                    CustomTextFormAuth(
                      valid: (val) {
                        return ValidInput(val!, 5, 100, "email");
                      },
                      hinttext: "12".tr,
                      labeltext: "18".tr,
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email,
                      isNumber: false,
                    ),
                    const SizedBox(height: 25),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) => CustomTextFormAuth(
                        isPassword: controller.isshowpassword,
                        valid: (val) {
                          return ValidInput(val!, 5, 8, "password");
                        },
                        hinttext: "13".tr,
                        labeltext: "19".tr,
                        ontapicon: () {
                          controller.showPassword();
                        },
                        iconData: Icons.remove_red_eye_outlined,
                        mycontroller: controller.password,
                        isNumber: false,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: (() {
                        controller.gotoforgetpassword();
                      }),
                      child: Text(
                        "14".tr,
                        textAlign: TextAlign.end,
                      ),
                    ),
                    CustomButtonAuth(
                      text: "15".tr,
                      onpressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomTextSignUpOrSignIn(
                      textone: "16".tr,
                      Texttwo: "17".tr,
                      ontap: () {
                        controller.gotosignup();
                      },
                    )
                  ],
                ),
              ),
            ))));
  }
}
