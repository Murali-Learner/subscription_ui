import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void disposeKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

void showToast({required String message}) {
  Fluttertoast.showToast(
      msg: message, backgroundColor: const Color.fromRGBO(51, 51, 51, 1));
}
