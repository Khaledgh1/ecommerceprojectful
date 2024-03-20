import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/Auth/verifycodesignup_controller.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "39".tr,
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(
              text: "40".tr,
            ),
            const SizedBox(height: 10),
            CustomTextBodyAuth(
              text: "41".tr,
            ),
            const SizedBox(height: 25),
            OtpTextField(
              borderRadius: BorderRadius.circular(30),
              numberOfFields: 5,
              borderColor: AppColor.primaryColor,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.gotosucesssignup();
              }, // end onSubmit
            ),
          ],
        ),
      )),
    );
  }
}
