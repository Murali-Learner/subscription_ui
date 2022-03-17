import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned celebImg1() {
  return Positioned(
      top: 180,
      right: 20,
      child: Image(
        image: AssetImage(
          AppImages.mood.celeb1,
        ),
        height: 100,
      ));
}
