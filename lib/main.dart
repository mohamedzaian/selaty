import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/feature/home/presentation/views/main_screen.dart';


void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(426, 952),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (_ , child) {

        return GetMaterialApp(
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            fontFamily: 'Cairo',
            scaffoldBackgroundColor: AppColors.backgroundColor

            // fontFamily: 'Cairo'
          ),
          locale: const Locale('ar'),
          debugShowCheckedModeBanner: false,
          home:const MainScreen (),
        );
      }
    );
  }
}
