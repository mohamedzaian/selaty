import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/images.dart';

class KeyLogo extends StatelessWidget {
  const KeyLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.Circle,
      color: Colors.white,
      strokeWidth: 2,
      dashPattern: [5, 3], //
      child: Center(
        child: CircleAvatar(

          backgroundColor: AppColors.greenColor,
          radius: context.getWidth * .35,
          child: Image.asset(AppImages.key , scale: 3,),





        ),
      ),
    );
  }
}
