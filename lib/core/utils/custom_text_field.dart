import 'package:flutter/material.dart';

import 'custom_bold_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText, this.helper, this.borderColor});
  final String labelText ;
  final Widget? helper ;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,



      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,

        contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
        focusedBorder: OutlineInputBorder(


          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: borderColor ?? Colors.grey),
        ),
helper: helper,
        label: Directionality(


          textDirection: TextDirection.rtl,
          child: CustomBoldText(
            text: labelText,
            size: 18,
            color: Colors.grey,
          ),
        ),
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: borderColor ?? Colors.grey),
        ),
      ),
    );
  }
}
