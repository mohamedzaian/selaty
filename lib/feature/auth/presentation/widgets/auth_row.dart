import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/feature/auth/presentation/views/sign_in_screen.dart';
import 'package:selaty/feature/auth/presentation/views/sign_up_screen.dart';

import '../../../../core/utils/custom_bold_text.dart';

class AuthRow extends StatelessWidget {
  const AuthRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(onTap: ()
            {
Get.to(()=> SignInScreen() , transition: Transition.leftToRightWithFade);
            },
            child: CustomBoldText(text: 'لديك حساب بالفعل؟', size: 16 ,)),
        InkWell(
          onTap: ()
          {
            Get.to(()=> SignUpScreen() , transition: Transition.leftToRightWithFade);

          },
          child: Row(
            children: [
              Icon(Icons.arrow_left),
              CustomBoldText(text: 'تسجيل الدخول', size: 16),

            ],
          ),
        )
      ],
    );
  }
}
