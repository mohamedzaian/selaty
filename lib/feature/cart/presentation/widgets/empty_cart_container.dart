import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_button.dart';

class EmptyCartContainer extends StatelessWidget {
  const EmptyCartContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: context.actualHeight * 0.63,
      width: context.getWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: context.isLandScape ?  context.actualHeight * 0.068: context.actualHeight * 0.1 ,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: AppColors.redColor,
            size: context.isLandScape ?  100 : 150,
          ),
          const CustomBoldText(text: 'عربة التسوق فارغة!', size: 22),
          const CustomBoldText(
            text: 'اجعل سلتك سعيدة و أضف منتجات',
            size: 14,
            color: AppColors.greyColor,
          ),
          SizedBox(
            height: context.isLandScape ?  context.actualHeight * 0.05: context.actualHeight * 0.2 ,
          ),

          CustomButton(
            height: context.isLandScape ? 50: 70,
            text: 'ابدأ التسوق',
            textSize: 16,
            color: AppColors.greenColor,
            width: context.isLandScape ?  context.getWidth * 0.8: context.getWidth * 0.7,
          ),
        ],
      ),
    );
  }
}
