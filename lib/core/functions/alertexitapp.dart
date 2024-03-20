import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alerrtExitApp() {
  Get.defaultDialog(
    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
    titlePadding: const EdgeInsets.all(20),
    title: "Confirm Exit...!!",
    middleText: "Do you Really want to exit the app?",
    actions: [
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("No")),
      ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: const Text("Yes"))
    ],
  );
  return Future.value(true);
}
