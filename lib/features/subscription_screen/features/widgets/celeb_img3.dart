import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned celebImg2() {
  return Positioned(
      top: 120,
      child: Image(
        image: AssetImage(
          AppImages.mood.celeb2,
        ),
        height: 100,
      ));
}
