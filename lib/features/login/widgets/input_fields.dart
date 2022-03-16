import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

Container inputFields() {
  return Container(
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(143, 148, 251, .2),
              blurRadius: 20.0,
              offset: Offset(0, 10))
        ]),
    child: Column(
      children: <Widget>[loginEmail(), loginPassword()],
    ),
  );
}

Container loginPassword() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: passwordController,
      decoration: InputDecoration(
        prefixIcon: Text(
          "*",
          style: TextStyle(
            fontSize: 40,
            color: Colors.grey.shade500,
          ),
        ),
        border: InputBorder.none,
        hintText: "******",
        hintStyle: GoogleFonts.acme(
          fontSize: 20,
          color: Colors.grey[400],
        ),
      ),
    ),
  );
}

Container loginEmail() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey[100]!),
      ),
    ),
    child: TextField(
      controller: emailController,
      decoration: InputDecoration(
        prefixIcon: Text(
          "@",
          style: TextStyle(
            fontSize: 25,
            color: Colors.grey.shade500,
          ),
        ),
        border: InputBorder.none,
        hintText: "awesome@gmail.com",
        hintStyle: GoogleFonts.acme(
          fontSize: 20,
          color: Colors.grey[400],
        ),
      ),
    ),
  );
}
