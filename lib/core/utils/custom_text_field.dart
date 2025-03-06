import 'package:flutter/material.dart';

import 'custom_bold_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText, this.helper});
  final String labelText ;
  final Widget? helper ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,


      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(


          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.grey),
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
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
