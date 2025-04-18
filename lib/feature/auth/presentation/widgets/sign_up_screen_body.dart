import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/custom_social_media_button.dart';
import 'package:selaty/core/utils/custom_text_field.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'auth_row.dart';
import 'create_acc_text.dart';
import 'custom_appbar.dart';
import 'email_text_field.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.getWidth * 0.05,
            vertical: context.getHeight * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                SizedBox(height: context.getHeight * 0.05),
                const CreateAccountText(),
                SizedBox(height: context.getHeight * 0.05),
                const CustomTextField(labelText: 'الاسم'),
                const SizedBox(height: 10),

                const EmailTextField(),
                const SizedBox(height: 10),
                CustomTextField(
                  labelText: 'كلمة السر',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off_outlined,
                      size: 30,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
                SizedBox(height: context.getHeight * 0.07),
                const CustomButton(
                  text: 'اشتراك',
                  textSize: 18,
                  color: AppColors.greenColor,
                ),
                SizedBox(height: context.getHeight * 0.04),

                const Align(
                  alignment: Alignment.center,
                  child: CustomBoldText(text: 'او اشترك مع', size: 18),
                ),
                SizedBox(height: context.getHeight * 0.03),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSocialMediaButton(
                      text: 'Facebook',
                      size: 17,
                      icon: FontAwesomeIcons.facebookF,
                      color: AppColors.blueColor,
                    ),
                    CustomSocialMediaButton(
                      text: 'Google',
                      size: 17,
                      icon: FontAwesomeIcons.googlePlusG,
                      color: AppColors.redColor,
                    ),
                  ],
                ),
                SizedBox(height: context.getHeight * 0.04),

                const AuthRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
