import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';

class ResendOtpButton extends StatelessWidget {
  const ResendOtpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: ()
    {

    },
        child: const CustomBoldText(text: '.اعادة ارسال رمز جديد', size: 17 ,color: AppColors.redColor,));
  }
}
