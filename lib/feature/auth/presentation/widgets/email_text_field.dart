import 'package:flutter/material.dart';

import '../../../../core/utils/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(labelText: 'عنوان البريد الالكتروني',);
  }
}
