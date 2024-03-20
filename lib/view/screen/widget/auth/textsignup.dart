import 'package:flutter/material.dart';
import '../../../../core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textone;
  final String Texttwo;
  final Function()? ontap;
  const CustomTextSignUpOrSignIn(
      {Key? key, required this.textone, required this.Texttwo, this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: const TextStyle(fontSize: 17),
        ),
        InkWell(
            onTap:ontap,
            child: Text(
              Texttwo,
              style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ))
      ],
    );
  }
}
