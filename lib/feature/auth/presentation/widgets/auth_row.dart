import 'package:flutter/material.dart';

import '../../../../core/utils/custom_bold_text.dart';

class AuthRow extends StatelessWidget {
  const AuthRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBoldText(text: 'لديك حساب بالفعل؟', size: 16 ,),
        Row(
          children: [
            Icon(Icons.arrow_left),
            CustomBoldText(text: 'تسجيل الدخول', size: 16),

          ],
        )
      ],
    );
  }
}
