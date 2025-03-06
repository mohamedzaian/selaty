import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../core/theme/colors.dart';
import '../../../core/utils/custom_bold_text.dart';
import '../../../core/utils/images.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        SizedBox(height: context.isLandScape ? 0 : context.getWidth * 0.1,),
        Image.asset(logo , scale: context.isLandScape ? 3 : 2
          ,),
        CustomBoldText(text: "ســــلتي", size: 40 , color: AppColors.redColor,),
        CustomBoldText(text: 'S E L A T Y', size: 30 ,color: Colors.black,),
        SizedBox(height:  context.getHeight * .06 ),


      ],
    );
  }
}
