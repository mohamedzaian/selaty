import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBoldText(text: 'مصطفي الاعصر', size: 20 , color: AppColors.textColor,);
  }
}
