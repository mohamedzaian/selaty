import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_text_field.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.actualWidth * 0.7,
      child: CustomTextField(
        hintText: 'البحث عن المنتجات...',
        borderColor: Colors.white,
        vertical: 20,
        suffixIcon:Icon(Icons.search , size: 30, color: AppColors.greyColor,
        ) ,
        prefixIcon:IconButton(onPressed: ()
        {

        }, icon: Icon(Icons.clear , size: 20,color: Colors.black,)) ,
      ),
    );
  }
}
