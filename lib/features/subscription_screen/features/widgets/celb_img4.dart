import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';

Positioned celebImg4() {
  return Positioned(
      bottom: 150,
      child: Image(
        image: AssetImage(
          AppImages.mood.celeb1,
        ),
        height: 100,
      ));
}
