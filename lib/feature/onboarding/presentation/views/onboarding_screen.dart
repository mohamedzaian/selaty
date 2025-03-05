import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_box_decoration.dart';
import 'package:selaty/feature/onboarding/presentation/widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          height: double.infinity,
            width: double.infinity,
            decoration: boxDecoration,
            child: OnboardingScreenBody())

    );
  }
}
