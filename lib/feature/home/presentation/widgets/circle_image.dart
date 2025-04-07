import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../generated/assets.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
     this.radius,
     this.backGroundColor, this.image,
  });

  final double? radius;
  final Color? backGroundColor;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius ??  26,


      child:  CircleAvatar(
        radius: radius == null  ?   23 : radius! + 3,
        backgroundColor: AppColors.yellowColor,

        child: CircleAvatar(
          radius: radius == null  ?   20 : radius! + 3,
          backgroundColor: backGroundColor ?? AppColors.yellowColor,
          backgroundImage: AssetImage(
          image ??   Assets.imagesCategoryIcon,
          ),
        ),
      ),
    );
  }
}
