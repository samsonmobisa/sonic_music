import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/controllers/devicescan_controller.dart';
import 'package:musicapp/pages/devicescaning_page.dart';
import 'package:musicapp/ui_login.dart';

import 'controllers/home_controller.dart';
import 'controllers/splash_controller.dart';
import 'landpage.dart';
import 'pages/splashcreenview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Get.put(SplashScreenController());
    Get.put(DeviceController());
    Get.put(HomeController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandPage(),
    );
  }
}

