import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart' show CustomBoldText;

class CartInfoContainer extends StatelessWidget {
  const CartInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      height:
      context.isLandScape
          ? context.actualHeight * 0.4
          : context.getHeight * 0.2,
      width: context.isLandScape ? context.actualWidth * 0.4:context.actualWidth  ,
      padding: const EdgeInsets.only(top: 15),
      child:  Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomBoldText(
                        text: 'البنود',
                        size: 20,
                        color: AppColors.greyColor,
                      ),
                      CustomBoldText(
                        text: 'المجموع الفرعي',
                        size: 20,
                        color: AppColors.greyColor,
                      ),  CustomBoldText(
                        text: 'رسوم التوصيل',
                        size: 20,
                        color: AppColors.greyColor,
                      ),
                      CustomBoldText(text: 'الإجمالي', size: 24,
                      ),
                    ],
                  ),
                  SizedBox(width: context.isLandScape ? context.actualWidth * 0.1  :context.actualWidth * 0.25 ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomBoldText(text: '\$ 4', size: 20,
                        color: AppColors.greyColor,),
                      CustomBoldText(text: '\$ 120', size: 20,
                        color: AppColors.greyColor,),
                      CustomBoldText(text: '\$ 20', size: 20,
                        color: AppColors.greyColor,),
                      CustomBoldText(text: '\$ 500', size: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),


          ),


        ],
      ),
    );
  }
}

