import 'package:flutter/material.dart';
import 'package:selaty/feature/auth/presentation/widgets/sign_in_screen_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
body: SignInScreenBody(),
    );
  }
}
