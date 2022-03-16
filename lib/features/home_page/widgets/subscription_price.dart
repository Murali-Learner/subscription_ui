import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/subscription_content.dart';

Color priceColor = Colors.white;
Row subscriptionPrice(int index) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '\$',
        style: GoogleFonts.eczar(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: priceColor,
        ),
      ),
      Text(
        subscriptionItems[index]["price"],
        style: GoogleFonts.eczar(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: priceColor,
        ),
      ),
      Text(
        subscriptionItems[index]["period"],
        style: GoogleFonts.eczar(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: priceColor,
        ),
      ),
    ],
  );
}
