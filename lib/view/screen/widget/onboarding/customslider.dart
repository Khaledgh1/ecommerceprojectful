import 'package:ecommercecourse/controller/OnboardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/datasource/static/static.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) {
        controller.OnPageChanged(value);
      },
      controller: controller.pageController,
      itemCount: onboardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.width * .15),
          Container(
            width: 450,
            height: 450,
            child: Image.asset(
              onboardingList[i].image!,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            onboardingList[i].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(onboardingList[i].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1),
          )
        ],
      ),
    );
  }
}
