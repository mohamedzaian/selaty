import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';

import '../../../../core/utils/arrow_back.dart';
import 'camera_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, this.leadingIcon, this.actionIcon, this.centerText,
  });
  final Widget? leadingIcon ;
  final Widget? actionIcon ;
  final String? centerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      actionIcon ??  const CameraButton(),

        Center(
         child:
         CustomBoldText( text: centerText ?? '' , size: 20,color: AppColors.textColor,),
       ),

       leadingIcon ?? const ArrowBack(),



      ],
    );
  }
}
