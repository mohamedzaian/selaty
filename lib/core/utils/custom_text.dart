import 'package:flutter/material.dart';
import 'package:selaty/core/utils/responsive_text.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.size, this.color});
final String text;
final double size;
final Color? color ;

  @override
  Widget build(BuildContext context) {
    return Text(text ,
      textAlign:TextAlign.right ,
      style: TextStyle(

      decoration: TextDecoration.none,
      fontSize: getResponsiveFontSize(context, size),
          color: color ?? Colors.black
    ),);
  }
}
