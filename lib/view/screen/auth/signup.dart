import 'package:ecommercecourse/controller/Auth/signup_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/view/screen/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtexttitleauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/validinput.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "17".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
        ),
        body: GetBuilder<SignUpControllerImp>(
          builder: (controller) {
            return Center(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  CustomTextTitleAuth(
                    text: "10".tr,
                  ),
                  const SizedBox(height: 10),
                  CustomTextBodyAuth(
                    text: "24".tr,
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormAuth(
                    valid: (val) {
                      return ValidInput(val!, 5, 100, "username");
                    },
                    hinttext: "23".tr,
                    labeltext: "20".tr,
                    iconData: Icons.person_add_alt_1_outlined,
                    mycontroller: controller.username,
                    isNumber: false,
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
                  CustomTextFormAuth(
                    valid: (val) {
                      return ValidInput(val!, 5, 15, "phone");
                    },
                    hinttext: "22".tr,
                    labeltext: "21".tr,
                    iconData: Icons.phone_android_outlined,
                    mycontroller: controller.phone,
                    isNumber: true,
                  ),
                  const SizedBox(height: 25),
                  CustomTextFormAuth(
                    valid: (val) {
                      return ValidInput(val!, 5, 8, "password");
                    },
                    isPassword: controller.isshowpassword,
                    ontapicon: () {
                      controller.showPassword();
                    },
                    hinttext: "13".tr,
                    labeltext: "19".tr,
                    iconData: Icons.remove_red_eye_outlined,
                    mycontroller: controller.password,
                    isNumber: false,
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      controller.gotoforgetpassword();
                    },
                    child: Text(
                      "14".tr,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  CustomButtonAuth(
                    text: "17".tr,
                    onpressed: () {
                      controller.gotoverifycodesignup();
                    },
                  ),
                  const SizedBox(height: 30),
                  CustomTextSignUpOrSignIn(
                    textone: "25".tr,
                    Texttwo: "26".tr,
                    ontap: () {
                      controller.gotoSignIn();
                    },
                  )
                ],
              ),
            ));
          },
        ));
  }
}
