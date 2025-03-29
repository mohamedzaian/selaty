import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_text_field.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    super.key,  this.suffixIcon,  this.prefixIcon, this.height,
  });
  final IconData? suffixIcon ;
  final IconData? prefixIcon ;
  final double? height ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: context.actualWidth * 0.7,
      child: CustomTextField(

        hintText:'البحث عن المنتجات...',
        vertical: 20,
        suffixIcon:Icon(suffixIcon ??  Icons.search , size: 30, color: AppColors.greyColor,
        ) ,
        prefixIcon:IconButton(onPressed: ()
        {

        }, icon: Icon(prefixIcon ?? Icons.clear , size: 20,color: Colors.black,)) ,
      ),
    );
  }
}
