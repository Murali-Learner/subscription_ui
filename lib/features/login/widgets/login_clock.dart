import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned loginClock() {
  return Positioned(
      right: 40,
      top: 40,
      width: 80,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppImages.mood.loginClock))),
      ));
}
