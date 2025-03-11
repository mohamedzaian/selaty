import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBoldText(
          text: 'القيمة الافضل',
          size: 20,
          color: AppColors.textColor,
        ),
        CustomText(
          text: '  اعلي المبيعات',
          size: 18,
          color: AppColors.greyColor,
        ),
        Spacer(),
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              Icon(
                Icons.arrow_left,
                color: AppColors.greyColor,
                size: 35,
              ),
              CustomText(
                text: ' مشاهدة الكل',
                size: 18,
                color: AppColors.greyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
