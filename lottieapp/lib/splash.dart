import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, '/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Container(
        child: Lottie.network(
            "https://assets7.lottiefiles.com/packages/lf20_jmejybvu.json"),
      ),
    );
  }
}
