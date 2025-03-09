import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/images.dart';

class Logo extends StatelessWidget {
  const   Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:context.isLandScape ? context.getWidth * .5 :context.getWidth * .1),

      child: Row(
        children: [
          Column(
            children: [
              CustomBoldText(text: "ســــلتي", size: 40 , color: AppColors.redColor,),

              CustomBoldText(text: 'S  E  L  A  T  Y', size: 24 ,color: Colors.black,),
            ],
          ),

          Image.asset(AppImages.logo , scale: 3
            ,),

        ],
      ),
    );
  }
}

