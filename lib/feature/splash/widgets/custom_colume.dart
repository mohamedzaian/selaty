import 'package:flutter/material.dart';
import 'package:selaty/core/media_query.dart';

import '../../../core/colors.dart';
import '../../../core/custom_bold_text.dart';
import '../../../core/images.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Image.asset(logo , scale: 2
          ,),
        CustomBoldText(text: "ســــلتي", size: 40 , color: redColor,),
        CustomBoldText(text: 'S E L A T Y', size: 30),
        SizedBox(height:  context.getHeight * .06 ),


      ],
    );
  }
}
