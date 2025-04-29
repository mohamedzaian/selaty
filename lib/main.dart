import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:selaty/core/services/firebase_service.dart';
import 'package:selaty/core/services/one_signal_services.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/feature/home/presentation/views/main_screen.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseService().initNotification();
  OneSignalServices().init();
  runApp(const MyApp());
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
