import 'package:flutter/material.dart';
import 'package:selaty/core/media_query.dart';

import '../../data/model/onboarding_model.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
    required this.onboardingItems,
  });

  final OnboardingItems onboardingItems;

  @override
  Widget build(BuildContext context) {

    print('the width is ${MediaQuery.sizeOf(context).shortestSide}');
    print ('the orientation is ${MediaQuery.of(context).orientation}');
    return CircleAvatar(
      backgroundColor: onboardingItems.color[0],

      radius: context.getWidth * .24,
      child: CircleAvatar(
        backgroundColor: onboardingItems.color[1],

        radius:  context.getWidth  *.2,
        child: CircleAvatar(
          backgroundColor: onboardingItems.color[2],

          radius:context.getWidth    * .16,
          child: Center(child: Image.asset(onboardingItems.logo ,scale: 6,)),
        ),
      ),

    );
  }
}
