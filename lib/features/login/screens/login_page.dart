import 'package:flutter/material.dart';
import 'package:subscription_app/core/constans.dart';
import 'package:subscription_app/features/login/widgets/input_fields.dart';
import 'package:subscription_app/features/login/widgets/login_button.dart';
import 'package:subscription_app/features/login/widgets/login_clock.dart';
import 'package:subscription_app/features/login/widgets/login_header.dart';
import 'package:subscription_app/features/login/widgets/login_light1.dart';
import 'package:subscription_app/features/login/widgets/login_light2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
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
                    inputFields(),
                    const SizedBox(
                      height: 30,
                    ),
                    loginButtton(context),
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
}
