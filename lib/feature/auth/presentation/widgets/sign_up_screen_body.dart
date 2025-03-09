import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/custom_socia-media_button.dart';
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
        child: SizedBox(
          height: context.getHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.getWidth * 0.05,
              vertical: context.getHeight * 0.05,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: context.getHeight * 0.08,
                  ),
                  CreateAccountText(),
                  SizedBox(height: context.getHeight * 0.06),
                  CustomTextField(labelText: 'الاسم'),
                  SizedBox(height: 10),

                  EmailTextField(),
                  SizedBox(height: 10),
                  CustomTextField(labelText: 'كلمة السر'),
                  SizedBox(height: context.getHeight * 0.07),
                  CustomButton(
                    text: 'اشتراك',
                    textSize: 18,
                    color: AppColors.greenColor,
                  ),
                  SizedBox(
                    height: context.getHeight * 0.04,
                  ),

                  Align(alignment: Alignment.center ,child: CustomBoldText(text: 'او اشترك مع', size: 18)),
                  SizedBox(height: context.getHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomSocialMediaButton(text: 'Facebook', size: 17, icon: FontAwesomeIcons.facebookF , color: AppColors.blueColor,),
                      CustomSocialMediaButton(text: 'Google', size: 17, icon: FontAwesomeIcons.googlePlusG , color: AppColors.redColor,)
                    ],
                  ),
                  SizedBox(
                    height: context.getHeight * 0.04,
                  ),


                  AuthRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
