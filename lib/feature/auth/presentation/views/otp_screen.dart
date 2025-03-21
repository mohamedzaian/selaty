import 'package:flutter/material.dart';
import 'package:selaty/feature/auth/presentation/widgets/otp_screen_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF6F6F6),


      body: OtpScreenBody(),
    );
  }
}
