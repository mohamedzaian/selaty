import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'custom_bold_text.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({super.key,  required this.color, this.onPressed, required this.text, required this.size, required this.icon,});
  final Color color;
  final String text ;
  final double size ;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Center(child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        CustomBoldText(text: text, size: size , color: color,),
        Icon(icon , color: color,size: 35,)
      ],
    )),
      style: ButtonStyle(
        fixedSize: WidgetStateProperty.all(Size(context.isLandScape ? context.getWidth * .8: context.getWidth  * .42, 60)),

        backgroundColor: MaterialStateProperty.all(Colors.white), // Force background color
        foregroundColor: MaterialStateProperty.all(color), // Text/icon color
        side: MaterialStateProperty.all(
          BorderSide(color: color, width: 1), // Border color and width
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(


            borderRadius: BorderRadius.circular(10),
            // Optional: Rounded corners
          ),
        ),
      ),



    );
  }
}
