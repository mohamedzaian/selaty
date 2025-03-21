import 'package:flutter/material.dart';

import '../../../../core/utils/custom_bold_text.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        CustomBoldText(text: 'أنشاء حساب جديد', size: 28),
        CustomBoldText(text: 'أدخل بياناتك لانشاء حساب', size: 16 , color: Colors.grey,)
      ],
    );
  }
}
