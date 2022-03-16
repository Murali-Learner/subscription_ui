import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/subscription_content.dart';

Text subscriptionName(int index) {
  return Text(
    subscriptionItems[index]["name"],
    style: GoogleFonts.eczar(
      fontSize: 35,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );
}
