import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';

import 'custom_bold_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.labelText,
    this.helper,
    this.borderColor,
    this.keyboardType,
    this.suffixIcon,
    this.controller,
    this.obscure,
    this.hintText,
    this.vertical, this.prefixIcon,
  });
  final String? labelText;
  final Widget? helper;
  final Color? borderColor;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool? obscure;
  final String? hintText;
  final double? vertical;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscure ?? false,

      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,

        fillColor: Colors.white,
        filled: true,

        contentPadding: EdgeInsets.symmetric(vertical:vertical?? 22, horizontal: 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: borderColor ?? AppColors.greyColor),
        ),
        helper: helper,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.greyColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),

        label: Directionality(
          textDirection: TextDirection.rtl,
          child: CustomBoldText(
            text: labelText ?? '',
            size: 18,
            color: Colors.grey,
          ),
        ),
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: borderColor ?? AppColors.greyColor),
        ),
      ),
    );
  }
}
