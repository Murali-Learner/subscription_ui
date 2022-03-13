import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Positioned loginHeader() {
  return Positioned(
      child: Container(
    margin: const EdgeInsets.only(top: 50),
    child: Center(
      child: Text(
        "Login",
        style: GoogleFonts.eczar(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
  ));
}
