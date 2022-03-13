import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned loginLight2() {
  return Positioned(
      left: 140,
      width: 80,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppImages.mood.loginLight2))),
      ));
}
