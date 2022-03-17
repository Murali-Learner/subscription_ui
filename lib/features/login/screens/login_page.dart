import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subscription_app/core/constans.dart';
import 'package:subscription_app/core/toast.dart';
import 'package:subscription_app/features/home_page/screens/home_page.dart';
import 'package:subscription_app/features/login/widgets/input_fields.dart';
import 'package:subscription_app/features/login/widgets/login_clock.dart';
import 'package:subscription_app/features/login/widgets/login_header.dart';
import 'package:subscription_app/features/login/widgets/login_light1.dart';
import 'package:subscription_app/features/login/widgets/login_light2.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  static const String id = "LoginPage";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(AppImages.illustrations.loginBackground),
                  fit: BoxFit.fill,
                )),
                child: Stack(
                  children: <Widget>[
                    loginLight1(),
                    loginLight2(),
                    loginClock(),
                    loginHeader(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    inputFields(emailController, passwordController),
                    const SizedBox(
                      height: 30,
                    ),
                    loginButtton(),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget loginButtton() {
    return InkWell(
      onTap: () {
        // log(emailController!.text);
        if (emailController.text == TestCredentials.testEmail &&
            passwordController.text.trim() == TestCredentials.testpassword) {
          log(emailController.text.trim());
          Get.toNamed(Homepage.id);
        } else {
          showToast(message: 'Check Email or Password');
        }
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
}
