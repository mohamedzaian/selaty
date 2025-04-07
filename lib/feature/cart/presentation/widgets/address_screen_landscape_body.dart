import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/presentation/view/successful_order_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../auth/presentation/widgets/custom_appbar.dart';
import 'address_container.dart';

class AddressScreenLandscapeBody extends StatelessWidget {
  const AddressScreenLandscapeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50 , bottom: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomAppBar(
            centerText: 'عنوان التسليم',
          ),
          SizedBox(height: context.getHeight * 0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBoldText(text: 'يشحن الي :  ', size: 20 , color: AppColors.greyColor,),
      SizedBox(
        height: context.actualHeight * 0.5,
        width: context.actualWidth * 0.75,
        child: ListView.separated(
            scrollDirection:  Axis.horizontal,

            itemBuilder: (context , i )
            {
              return const AddressContainer();

            }, separatorBuilder: (context , i )
        {
          return   const SizedBox(width: 20,);
        }, itemCount: 4),
      ),

            ],
          ),
          const Spacer(),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 50.0),
             child: CustomButton(
               onPressed: ()
               {
                 Get.to(()=> const SuccessfulOrderScreen() , transition: Transition.leftToRightWithFade);
               }
               ,
              width: context.actualWidth * 0.75,
              height: 50,
              text: 'التسليم لهذا العنوان', textSize: 18 , color: AppColors.greenColor,),
           ),







        ],
      ),
    );
  }
}
