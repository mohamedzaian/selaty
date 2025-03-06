import 'package:flutter/material.dart';

import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(labelText: 'كلمة السر' , helper: GestureDetector(onTap: ()
    {

    },child: CustomBoldText(text: "هل نسيت كلمة السر", size: 17,)),);
  }
}
