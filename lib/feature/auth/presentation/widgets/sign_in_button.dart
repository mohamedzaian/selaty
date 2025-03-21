import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/feature/auth/presentation/views/sign_in_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(text: 'تسجيل الدخول', textSize: 16,
        color: AppColors.redColor,
    onPressed:
    ()
      {
        Get.to(()=>const SignInScreen() ,transition: Transition.rightToLeftWithFade );
      },);
  }
}
