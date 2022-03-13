import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/features/home_page/screens/home_page.dart';

Widget loginButtton(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Homepage();
        },
      ));
    },
    child: Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 136, 31, 197),
            Color.fromARGB(153, 70, 78, 218),
          ])),
      child: Center(
        child: Text(
          "Login",
          style: GoogleFonts.acme(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
