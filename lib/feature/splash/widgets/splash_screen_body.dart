import 'package:flutter/material.dart';
import 'package:selaty/core/utils/images.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'custom_container.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity ,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backGroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: FractionallySizedBox(
          heightFactor: context.isLandScape ? 1 :   .7 ,
            child: CustomContainer())
      ),
    );
  }
}

