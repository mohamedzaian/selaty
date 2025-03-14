import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/feature/home/presentation/views/main_screen.dart';


void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor

        // fontFamily: 'Cairo'
      ),
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
