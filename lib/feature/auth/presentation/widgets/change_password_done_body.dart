import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'key_logo.dart';

class ChangePasswordDoneBody extends StatelessWidget {
  const ChangePasswordDoneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const KeyLogo(),
        SizedBox(
          height:context.getWidth * 0.13 ,
        ),
        const CustomBoldText(text: 'كلمة المرور الخاصة بك لها', size: 20 , color: AppColors.whiteColor,),
        SizedBox(
          height:context.getWidth * 0.13 ,
        ),
        CustomButton(text: 'تم', textSize: 18 , color: AppColors.whiteColor,textColor: AppColors.redColor , width:context.getWidth * 0.6,
        onPressed: ()
          {

          },)

      ],
    );
  }
}

