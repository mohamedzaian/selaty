import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';

import '../../../../core/utils/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextField(labelText: 'عنوان البريد الالكتروني',
      keyboardType: TextInputType.emailAddress,
      suffixIcon:  Icon(Icons.check_circle_outline ,color: AppColors.greenColor ,size: 30,),
    );
  }
}
