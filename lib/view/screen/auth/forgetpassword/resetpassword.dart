import 'package:ecommercecourse/controller/Auth/Resetpassword_controller.dart.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/core/constant/imageassets.dart';
import 'package:ecommercecourse/view/screen/widget/auth/custombuttonauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextbodyauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtextformauth.dart';
import 'package:ecommercecourse/view/screen/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/validinput.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "42".tr,
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
            Image.asset(AssetImages.ResetIcon, height: 250, width: 250),
            CustomTextTitleAuth(
              text: "43".tr,
            ),
            const SizedBox(height: 10),
            CustomTextBodyAuth(
              text: "44".tr,
            ),
            const SizedBox(height: 25),
            CustomTextFormAuth(
              valid: (val) {
                return ValidInput(val!, 5, 8, "password");
              },
              hinttext: "34".tr,
              labeltext: "35".tr,
              iconData: Icons.lock_outline,
              mycontroller: controller.password, isNumber: false,
            ),
            const SizedBox(height: 25),
            CustomTextFormAuth(
              valid: (val) {
                return ValidInput(val!, 5, 8, "password");
              },
              hinttext: "45".tr,
              labeltext: "46".tr,
              iconData: Icons.lock_rounded,
              mycontroller: controller.password, isNumber: false,
            ),
            const SizedBox(height: 25),
            CustomButtonAuth(
              text: "47".tr,
              onpressed: () {
                controller.gotosucessresetpassword();
              },
            ),
          ],
        ),
      )),
    );
  }
}
