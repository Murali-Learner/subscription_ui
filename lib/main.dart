import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subscription_app/features/home_page/screens/home_page.dart';

import 'package:subscription_app/features/login/screens/login_page.dart';
import 'package:subscription_app/features/subscription_screen/features/subscription_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        Homepage.id: (context) => Homepage(),
        LoginPage.id: (context) => LoginPage(),
        SubscriptionScreen.id: (context) => const SubscriptionScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
