import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/feature/auth/presentation/views/sign_up_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(text: 'انشئ حساب', textSize: 16, color: AppColors.greenColor ,onPressed: ()
      {
        Get.to(()=> SignUpScreen() , transition: Transition.leftToRightWithFade);
      },);
  }
}
