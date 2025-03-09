import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/views/change_password_screen.dart';

import '../../../../core/theme/colors.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      length: 4,
focusedPinTheme: PinTheme(
  width: context.getWidth * 0.23,
  height: context.getWidth * 0.25,
  textStyle: TextStyle(
    color: AppColors.whiteColor,
    fontSize: 34,
    fontWeight: FontWeight.bold,
  ),
  decoration: BoxDecoration(

    color: AppColors.redColor, // Background color
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: AppColors.whiteColor, width: 2),
  ),
),
      defaultPinTheme: PinTheme(
        width: context.getWidth * 0.2,
        height: context.getWidth * 0.23,
        textStyle: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
        decoration: BoxDecoration(

          color: Colors.white, // Background color
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.whiteColor, width: 2),
        ),
      ),
      onCompleted: (value)
      {
        Get.to(()=> ChangePasswordScreen() , transition: Transition.leftToRightWithFade);
      },
    );
  }
}
