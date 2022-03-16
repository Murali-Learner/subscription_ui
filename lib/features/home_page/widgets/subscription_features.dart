import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/subscription_content.dart';

Text subscriptionfeatures(int index) {
  return Text(
    subscriptionItems[index]["features"],
    style: GoogleFonts.eczar(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black54,
    ),
  );
}
