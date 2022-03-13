import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned loginLight1() {
  return Positioned(
    left: 30,
    width: 80,
    height: 200,
    child: Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(AppImages.mood.loginLight1))),
    ),
  );
}
