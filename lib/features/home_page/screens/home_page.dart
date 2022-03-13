import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:subscription_app/core/constans.dart';
import 'package:subscription_app/core/subscription_content.dart';
import 'package:subscription_app/features/home_page/widgets/buy_button.dart';
import 'package:subscription_app/features/home_page/widgets/subscription_features.dart';
import 'package:subscription_app/features/home_page/widgets/subscription_name.dart';
import 'package:subscription_app/features/home_page/widgets/subscription_price.dart';

class Homepage extends StatelessWidget {
  CarouselController carouselController = CarouselController();

  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,

        color: const Color.fromRGBO(130, 133, 143, 1),
        // color: _color,
        child: CarouselSlider.builder(
          carouselController: carouselController,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            initialPage: 1,
            height: 400.0,
            aspectRatio: 16 / 11,
            viewportFraction: 0.6,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {},
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              width: 500,
              height: 273,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 4,
                    offset: Offset(0, 12),
                  ),
                ],
                gradient: AppGradients.mood.cardGradients,
              ),
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: subscription[index]["color"],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              subscriptionName(index),
                              subscriptionPrice(index),
                              subscriptionfeatures(index),
                              const SizedBox(
                                height: 20,
                              ),
                              buyButton(index),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: subscription.length,
        ),
      ),
    );
  }
}
