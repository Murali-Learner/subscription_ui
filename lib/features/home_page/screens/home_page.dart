import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/constans.dart';

import 'package:subscription_app/core/subscription_content.dart';
import 'package:subscription_app/features/home_page/controller/home_controller.dart';
import 'package:subscription_app/features/home_page/widgets/subscription_features.dart';
import 'package:subscription_app/features/home_page/widgets/subscription_name.dart';
import 'package:subscription_app/features/home_page/widgets/subscription_price.dart';

// ignore: must_be_immutable
class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);
  static const String id = "Homepage";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Measurements.screenHeight,
          width: Measurements.screenWidth,
          alignment: Alignment.center,

          color: const Color.fromRGBO(51, 51, 51, 1),
          // color: _color,
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: Measurements.screenHeight * 0.9,
                    width: Measurements.screenWidth * 0.9,
                    alignment: Alignment.center,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: subscriptionItems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation:
                              subscriptionItems[index]["isPick"] ? 10 : 0,
                          shadowColor: Colors.white,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                subscriptionItems[index]["isPick"] =
                                    !subscriptionItems[index]["isPick"];
                              });
                            },
                            child: Container(
                              height: Measurements.screenHeight * 0.25,
                              width: Measurements.screenWidth * 0.3,
                              decoration: BoxDecoration(
                                color: subscriptionItems[index]["color"],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  subscriptionName(index),
                                  subscriptionPrice(index),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  subscriptionfeatures(index),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 10,
                left: 30,
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 9, 103, 138),
                    ),
                    height: 60,
                    width: Measurements.screenWidth * 0.8,
                    alignment: Alignment.center,
                    child: Text(
                      "Next",
                      style: GoogleFonts.eczar(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
