import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text.dart';
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
            crossAxisAlignment:CrossAxisAlignment.start,
            spacing: 5,
            children: [
              CustomBoldText(
                text: onboardingItems.text,
                size: 28,
                color: onboardingItems.color[2],
              ),
              CustomText(
                text: onboardingItems.subtext,
                size: 22,
                color: AppColors.textColor,
              ),
            ],
          ),

        ],

      ),
    );
  }
}
