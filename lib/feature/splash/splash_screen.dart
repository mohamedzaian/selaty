import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/feature/onboarding/presentation/onboarding_screen.dart';
import 'package:selaty/feature/splash/widgets/splash_screen_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
Future.delayed(Duration(seconds: 2), ()
{
  Get.offAll(()=> OnboardingScreen() ,transition:  Transition.rightToLeftWithFade);
});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SplashScreenBody(),


    );
  }
}
