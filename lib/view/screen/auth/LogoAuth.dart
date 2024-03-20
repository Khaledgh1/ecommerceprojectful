import 'package:ecommercecourse/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetImages.Logo, height: 250, width: 250);
  }
}
