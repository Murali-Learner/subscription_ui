import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned celebImg3() {
  return Positioned(
      bottom: 100,
      right: 20,
      child: Image(
        image: AssetImage(
          AppImages.mood.celeb2,
        ),
        height: 100,
      ));
}
