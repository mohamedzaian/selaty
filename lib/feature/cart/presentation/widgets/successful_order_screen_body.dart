import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/presentation/view/path_screen.dart';
import 'package:selaty/feature/cart/presentation/widgets/cart_appbar.dart';
import 'package:selaty/generated/assets.dart';

import '../../../../core/theme/colors.dart';

class SuccessfulOrderScreenBody extends StatelessWidget {
  const SuccessfulOrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
        top: 50,
        bottom: 20,
      ),
      child: Column(
        children: [
          const CartAppBar(),
          SizedBox(height: context.actualHeight * 0.1),
          Container(
            height: context.actualHeight * 0.63,
            width: context.getWidth,
            decoration: BoxDecoration(
              color: AppColors.greenColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  context.isLandScape ?  Image.asset(Assets.imagesSuccessBagIcon,width: 150,height: 100,): Image.asset(Assets.imagesSuccessBagIcon,),
                  const CustomBoldText(
                    text: 'طلبك ناجح !',
                    size: 24,
                    color: Colors.white,
                  ),
                  SizedBox(height: context.actualHeight * 0.01),
                  const CustomBoldText(
                    text: 'شكرا علي الطلب .. ستحصل عليه في خلال بضع دقائق',
                    size: 14,
                    color: Colors.white70,
                  ),
                  const Spacer(),
                    CustomButton(
                      onPressed: ()
                      {
                        Get.to(()=> const PathScreen() , transition: Transition.leftToRightWithFade);
                      },
                      width: context.getWidth,
                      text: 'ترتيب المسار', textSize: 20 , color: const Color(0xff38344B),textColor: Colors.white70,
                  height: context.isLandScape ? 40: 75,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
