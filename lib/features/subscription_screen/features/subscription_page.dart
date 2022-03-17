import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/constans.dart';

class SubscriptionScreen extends StatelessWidget {
  static const String id = "SubscriptionScreen";
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Measurements.screenHeight,
        width: Measurements.screenWidth,
        color: const Color.fromRGBO(51, 51, 51, 1),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Congratulations \n ",
                  style: GoogleFonts.eczar(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(199, 150, 75, 1),
                  ),
                )),
            Positioned(
                top: 100,
                child: Image(
                  image: AssetImage(
                    "assets/images/celeb1.png",
                  ),
                  height: 100,
                )),
            Positioned(
                top: 150,
                right: 20,
                child: Image(
                  image: AssetImage(
                    "assets/images/celeb1.png",
                  ),
                  height: 100,
                )),
            Positioned(
                bottom: 100,
                right: 20,
                child: Image(
                  image: AssetImage(
                    "assets/images/celeb2.png",
                  ),
                  height: 100,
                )),
            Positioned(
                bottom: 150,
                child: Image(
                  image: AssetImage(
                    "assets/images/celeb1.png",
                  ),
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}
