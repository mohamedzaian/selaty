import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_button.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/custom_appbar.dart';

import '../../../../core/theme/colors.dart';
import '../view/successful_order_screen.dart';
import 'address_container.dart';

class AddressScreenBody extends StatelessWidget {
  const AddressScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50 , bottom: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            centerText: 'عنوان التسليم',
          ),
          const CustomBoldText(text: 'يشحن الي', size: 20 , color: AppColors.greyColor,),
          SizedBox(
            height: context.actualHeight * 0.65,
            width: context.actualWidth,
            child: ListView.separated(
              scrollDirection:  Axis.vertical,

                itemBuilder: (context , i )
                {
                  return const AddressContainer();

                }, separatorBuilder: (context , i )
                {
                  return   const SizedBox(height: 20,);
                }, itemCount: 4),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomButton(
              onPressed: ()
              {
                Get.to(()=> const SuccessfulOrderScreen() , transition: Transition.leftToRightWithFade);

              },
              height: 80,
                text: 'التسليم لهذا العنوان', textSize: 18 , color: AppColors.greenColor,),
          )

          



        ],
      ),
    );
  }
}

