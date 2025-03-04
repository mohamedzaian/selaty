import 'package:flutter/material.dart';
import 'package:selaty/core/media_query.dart';

import '../../../../core/colors.dart';
import '../../../../core/custom_bold_text.dart';
import '../../../../core/custom_text.dart';
import '../../data/model/onboarding_model.dart';
import 'custom_logo.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.onboardingItems,
  });

  final OnboardingItems onboardingItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0 ,  ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [

          SizedBox(height: context.isLandScape ? context.getWidth * 0.1 :
          context.getWidth * .2,),
          CustomLogo(onboardingItems: onboardingItems),
          SizedBox(height:context.isLandScape ? context.getWidth * 0.01 :
          context.getWidth * .4,),
          Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomBoldText(
                text: onboardingItems.text,
                size: 28,
                color: onboardingItems.color[2],
              ),
              CustomText(
                text: onboardingItems.subtext,
                size: 22,
                color: textColor,
              ),
            ],
          ),

        ],

      ),
    );
  }
}
