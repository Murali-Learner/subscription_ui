import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void disposeKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

void showToast({String? message}) {
  Fluttertoast.showToast(msg: message!);
}
