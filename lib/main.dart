
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uploadaudiofile/routes/approutes.dart';
import 'package:uploadaudiofile/views/binding/splash_binding.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: SplashBinding(), getPages: AppRoutes.pages, debugShowCheckedModeBanner: false, title: 'Feedback', initialRoute: AppRoutes.splashScreen);
  }
}
