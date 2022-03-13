import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/subscription_content.dart';

Color priceColor = Colors.white;
Row subscriptionPrice(int index) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0, left: 60),
        child: Text(
          '\$',
          style: GoogleFonts.eczar(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: priceColor,
          ),
        ),
      ),
      Text(
        subscription[index]["price"],
        style: GoogleFonts.eczar(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: priceColor,
        ),
      ),
      Text(
        subscription[index]["period"],
        style: GoogleFonts.eczar(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: priceColor,
        ),
      ),
    ],
  );
}
