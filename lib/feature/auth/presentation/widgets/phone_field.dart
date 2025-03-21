import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../core/utils/custom_text.dart';

class PhoneField extends StatelessWidget {
   PhoneField({
    super.key,
  });

final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: IntlPhoneField(
        readOnly: true,
        autofocus: true,
        keyboardType: TextInputType.phone,
        focusNode: focusNode,
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            )
          ),
label: CustomText(text: 'رقم الهاتف', size: 20),

          alignLabelWithHint: true,
        ),
        dropdownIconPosition: IconPosition.leading, // Moves flag to the left
        textAlign: TextAlign.center, // Aligns text to the right for RTL
        initialCountryCode: 'EG', // Example: Saudi Arabia
        onChanged: (phone) {
        },
      ),
    );
  }
}
