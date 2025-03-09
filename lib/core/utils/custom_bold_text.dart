import 'package:flutter/material.dart';
import 'package:selaty/core/utils/responsive_text.dart';

class CustomBoldText extends StatelessWidget {
  CustomBoldText({super.key, required this.text, required this.size, this.color, this.maxLine, });
  final String text;
  final double size;
  final Color? color ;
  final int? maxLine;



  @override
  Widget build(BuildContext context) {
    return Text(text ,
      maxLines: maxLine ?? 2,
      style:TextStyle(

      fontFamily: 'Cairo',
      decoration: TextDecoration.none,
        fontSize: getResponsiveFontSize(context, size),
        color: color ?? Colors.black,
      fontWeight: FontWeight.bold,

    ),);
  }
}
