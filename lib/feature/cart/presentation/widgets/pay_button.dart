import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/presentation/view/empty_cart_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_button.dart';

class PayButton extends StatelessWidget {
  const PayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width:
          context.isLandScape ? context.actualWidth * 0.4 : context.actualWidth,
      child:  CustomButton(
        onPressed: ()
        {
         Get.to(()=> const EmptyCartScreen() , transition: Transition.leftToRightWithFade);
        },
        text: 'الدفع',
        textSize: 23,
        color: AppColors.greenColor,
      ),
    );
  }
}
