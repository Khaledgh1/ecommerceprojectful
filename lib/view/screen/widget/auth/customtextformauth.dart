import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String Function(String?) valid;
  final bool isNumber;
  final bool? isPassword;
  final void Function()? ontapicon;
  const CustomTextFormAuth({
    Key? key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.isPassword,
    this.ontapicon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword == null || isPassword == false ? false : true,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      controller: mycontroller,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 14),
          label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(labeltext),
          ),
          suffixIcon: InkWell(child: Icon(iconData),onTap:ontapicon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
