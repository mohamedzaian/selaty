import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/resend_otp_button.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/arrow_back.dart';
import '../../../../core/utils/custom_bold_text.dart';
import 'camera_button.dart';
import 'otp_text_field.dart';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: context.getWidth * .20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CameraButton(borderColor: AppColors.whiteColor),
                CustomBoldText(
                  text: 'التحقق من الهاتف',
                  size: 17,
                  color: AppColors.textColor,
                ),
                ArrowBack(borderColor: AppColors.whiteColor),
              ],
            ),

            SizedBox(height: context.getWidth * 0.1),
            const CustomBoldText(
              text: 'ادخل رمز OTP الخاص بك هنا',
              size: 18,
              color: AppColors.greyColor,
            ),
            SizedBox(height: context.getWidth * 0.2),

            const OtpTextField(),
            SizedBox(height: context.getWidth * 0.1),
            const CustomBoldText(
              text: 'لم يصل الكود ؟',
              size: 17,
              color: AppColors.greyColor,
            ),
            SizedBox(height: context.getWidth * 0.01),

            const ResendOtpButton(),
            SizedBox(height: context.getWidth * 0.2),
          ],
        ),
      ),
    );
  }
}
