import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/custom_text_field.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/views/change_password_done.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/arrow_back.dart';
import '../../../../core/utils/custom_bold_text.dart';
import 'camera_button.dart';

class ChangePasswordScreenBody extends StatelessWidget {
  const ChangePasswordScreenBody({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: AppColors.whiteColor,
                  title: CustomBoldText(
                    text: "تغيير كلمة المرور",
                    size: 18,
                    color: AppColors.textColor,
                  ),

                  centerTitle: true,
                  leading: CameraButton(
                    borderColor: AppColors.whiteColor,
                    width: 30,
                    height: 30,
                  ),
                  actions: [ArrowBack(borderColor: AppColors.whiteColor)],
                ),
                SizedBox(height: context.getHeight * 0.05),
                CustomBoldText(
                  text: 'ادخل كلمة المرور الجديدة',
                  size: 18,
                  color: AppColors.greyColor,
                ),
                SizedBox(height: context.getHeight * 0.1),
                CustomTextField(
                  labelText: "كلمة المرور الحالي",
                  borderColor: AppColors.whiteColor,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off_outlined,
                      size: 30,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
                SizedBox(height: context.getHeight * 0.04),
                CustomTextField(
                  labelText: "كلمة المرور الجديدة",
                  borderColor: AppColors.whiteColor,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off_outlined,
                      size: 30,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
                SizedBox(height: context.getHeight * 0.1),
                CustomButton(
                  text: 'تغير',
                  textSize: 20,
                  color: AppColors.greenColor,
                  onPressed: () {
                    Get.to(
                      () => ChangePasswordDone(),
                      transition: Transition.leftToRightWithFade,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
