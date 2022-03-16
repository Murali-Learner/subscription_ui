import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/subscription_content.dart';

Container buyButton(int index) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      color: Colors.white,
    ),
    height: 50,
    width: 100,
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Buy",
          style: GoogleFonts.acme(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: subscriptionItems[index]["color"],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_forward_ios_sharp,
          color: subscriptionItems[index]["color"],
          size: 18,
        )
      ],
    ),
  );
}
