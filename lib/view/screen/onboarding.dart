import 'package:ecommercecourse/controller/OnboardingController.dart';
import 'package:ecommercecourse/view/screen/widget/onboarding/custombutton.dart';
import 'package:ecommercecourse/view/screen/widget/onboarding/customslider.dart';
import 'package:ecommercecourse/view/screen/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 4, child: CustomSliderOnboarding()),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
