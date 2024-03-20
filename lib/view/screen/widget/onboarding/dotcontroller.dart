import 'package:ecommercecourse/controller/OnboardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onboardingList.length,
                  (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 10),
                        duration: const Duration(milliseconds: 90),
                        width: controller.currentpage == index ? 30 : 5,
                        height: 6,
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      )),
            ]));
  }
}
