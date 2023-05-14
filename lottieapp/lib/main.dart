import 'package:flutter/material.dart';
import 'package:lottieapp/splash.dart';
import 'package:lottieapp/welcome.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Splash(),
      '/welcome': (context) => Welcome(),
    },
  ));
}
