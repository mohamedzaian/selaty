import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key, this.rightWidget, this.leftWidget, this.centerWidget,
  });
  final Widget? rightWidget ;
  final Widget? centerWidget ;
  final Widget? leftWidget ;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       rightWidget ?? const CustomBoldText(
          text: 'القيمة الافضل',
          size: 18,
          color: AppColors.textColor,
        ),
      centerWidget??  const CustomText(
          text: '  اعلي المبيعات',
          size: 14,
          color: AppColors.greyColor,
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: leftWidget ?? const Row(
            children: [
              Icon(
                Icons.arrow_left,
                color: AppColors.greyColor,
                size: 35,
              ),
            CustomText(
                text: 'مشاهدة الكل',
                size: 14,
                color: AppColors.greyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
