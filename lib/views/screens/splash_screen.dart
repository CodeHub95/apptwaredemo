import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploadaudiofile/constants/string_const.dart';
import 'package:uploadaudiofile/views/screens/feedback_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer( const Duration(seconds: 2), () {
      Get.to(() => FeedbackScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
               Center(child: Text(StringConst.splash))
        ],
      ),
    );
  }
}
