import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/feature/auth/presentation/views/forget_password_screen.dart';

import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      suffixIcon: Icon(Icons.visibility_off_outlined,color: AppColors.greyColor,size: 30,),
      labelText: 'كلمة السر' , helper: GestureDetector(onTap: ()
    {

    },child: InkWell (
      onTap: ()
        {
          Get.to(()=> ForgetPasswordScreen() , transition: Transition.leftToRightWithFade);
        },
        child: CustomBoldText(text: "هل نسيت كلمة السر", size: 17,))),);
  }
}
