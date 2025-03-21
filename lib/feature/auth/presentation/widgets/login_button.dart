import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/feature/home/presentation/views/home_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(text: 'تسجيل الدخول', textSize: 18, color: AppColors.greenColor ,
    onPressed: ()
      {
        Get.offAll(()=> const HomeScreen()  ,transition: Transition.leftToRightWithFade);
      },);
  }
}
