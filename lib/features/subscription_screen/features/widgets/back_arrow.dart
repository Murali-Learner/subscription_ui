import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget backArrow() {
  return Positioned(
    top: 50,
    child: Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Color.fromRGBO(199, 150, 75, 1),
        ),
      ),
    ),
  );
}
