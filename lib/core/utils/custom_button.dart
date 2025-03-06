import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'custom_bold_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textSize, required this.color, this.onPressed});
  final String text;
  final double textSize ;
  final Color color;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Center(child: CustomBoldText(text: text, size: textSize, color:Colors.white,)),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color), // Ensures color is applied
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        fixedSize: MaterialStateProperty.all(Size(context.getWidth, 60)),
      ),

    );
  }
}
