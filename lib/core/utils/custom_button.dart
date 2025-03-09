import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'custom_bold_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textSize,  this.color, this.onPressed, this.textColor, this.width,});
  final String text;
  final double textSize ;
  final Color? color;
  final Color? textColor ;
  final double? width;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Center(child:CustomBoldText(text: text, size: textSize, color:textColor ?? Colors.white,)),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color), // Ensures color is applied
        foregroundColor: WidgetStateProperty.all(color ?? Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        fixedSize: WidgetStateProperty.all(Size(context.isLandScape ?context.getHeight : width ??  context.getWidth, 60)),
      ),

    );
  }
}
