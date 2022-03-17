import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppFonts {
  static const String quicksand = 'Quicksand';
}

class Measurements {
  static double screenHeight = Get.height;
  static double screenWidth = Get.width;
}

class TestCredentials {
  static const String testEmail = "muralikrishna@gmail.com";
  static const String testpassword = "murali1234";
}

class AppImages {
  static _IllustrationImages illustrations = const _IllustrationImages();
  static _MoodImages mood = const _MoodImages();
}

class AppGradients {
  static _MoodGradients mood = const _MoodGradients();
}

class BoxedDecorations {
  static _BoxShadows shadows = const _BoxShadows();
}

class _IllustrationImages {
  const _IllustrationImages();
  String get loginBackground => 'assets/images/background.png';
}

class _MoodImages {
  const _MoodImages();

  String get loginClock => 'assets/images/clock.png';
  String get loginLight1 => 'assets/images/light-1.png';
  String get loginLight2 => 'assets/images/light-2.png';
  String get celeb1 => 'assets/images/celeb1.png';
  String get celeb2 => 'assets/images/celeb2.png';
}

class _MoodGradients {
  const _MoodGradients();

  LinearGradient get cardGradients => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0x000d253c), Color(0xff0d253c)],
      );
}

class _BoxShadows {
  const _BoxShadows();
  List<BoxShadow> get lightBlack => [
        const BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.10),
          offset: Offset(2, 4),
          blurRadius: 10,
        )
      ];
}
