import 'package:ecommercecourse/controller/Auth/forgetpassword_controller.dart.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imageassets.dart';
import 'package:ecommercecourse/view/screen/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/validinput.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forget Password",
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
            Image.asset(AssetImages.LockIcon, height: 250, width: 250),
             CustomTextTitleAuth(
              text: "27".tr,
            ),
            const SizedBox(height: 10),
             CustomTextBodyAuth(
              text: "29".tr,
            ),
            const SizedBox(height: 25),
            CustomTextFormAuth(
              valid: (val) {
                return ValidInput(val!, 5, 100, "email");
              },
              hinttext: "12".tr,
              labeltext: "18".tr,
              iconData: Icons.email_outlined,
              mycontroller: controller.email, isNumber: false,
            ),
            const SizedBox(height: 25),
            CustomButtonAuth(
              text: "30".tr,
              onpressed: () {
                controller.gotoverifycode();
              },
            ),
          ],
        ),
      )),
    );
  }
}
