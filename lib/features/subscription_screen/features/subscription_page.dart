import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/constans.dart';
import 'package:subscription_app/features/subscription_screen/features/widgets/back_arrow.dart';
import 'package:subscription_app/features/subscription_screen/features/widgets/celb_img4.dart';
import 'package:subscription_app/features/subscription_screen/features/widgets/celeb_Img3.dart';
import 'package:subscription_app/features/subscription_screen/features/widgets/celeb_img1.dart';
import 'package:subscription_app/features/subscription_screen/features/widgets/celeb_img3.dart';

class SubscriptionScreen extends StatelessWidget {
  static const String id = "SubscriptionScreen";
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: Measurements.screenHeight,
        width: Measurements.screenWidth,
        color: const Color.fromRGBO(51, 51, 51, 1),
        child: Stack(
          children: [
            backArrow(),
            congratulations(),
            celebImg2(),
            celebImg1(),
            celebImg3(),
            celebImg4(),
          ],
        ),
      ),
    );
  }

  Align congratulations() {
    return Align(
        alignment: Alignment.center,
        child: Text(
          "Subscription Confirmed",
          style: GoogleFonts.eczar(
            fontSize: 35,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(199, 150, 75, 1),
          ),
        ));
  }
}
