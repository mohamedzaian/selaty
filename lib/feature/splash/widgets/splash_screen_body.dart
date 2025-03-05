import 'package:flutter/material.dart';
import 'package:selaty/core/utils/images.dart';

import 'custom_container.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

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
        child: isPortrait ? FractionallySizedBox(
          heightFactor:  .7 ,
            alignment:  Alignment.topCenter ,
            child: CustomContainer()) :
        FractionallySizedBox(
          widthFactor: 1,
            child: SizedBox(
              width: double.infinity,
                child: CustomContainer())),
      ),
    );
  }
}

