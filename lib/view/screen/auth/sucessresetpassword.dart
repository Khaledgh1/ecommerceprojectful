import 'package:ecommercecourse/controller/Auth/sucessresetpassword_controller.dart';
import 'package:ecommercecourse/core/constant/color.dart';
import 'package:ecommercecourse/view/screen/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessResetPassword extends StatelessWidget {
  const SucessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SucessResetPasswordControllerImp controller =
        Get.put(SucessResetPasswordControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.check_circle_outlined,
                color: AppColor.primaryColor,
                size: 200,
              ),
              const SizedBox(height: 20),
              Text("32".tr, style: Theme.of(context).textTheme.headline1),
              Text(
                "36".tr,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: CustomButtonAuth(
                  text: "31".tr,
                  onpressed: () {
                    controller.gotologin();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
