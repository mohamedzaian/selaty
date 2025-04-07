
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
  });

  @override

  Widget build(BuildContext context) {
    return Container(
      height:   context.getHeight * 0.25,
      width: context.getWidth * 0.8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child:

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: context.getHeight * 0.03,
              width: context.getWidth * 0.15,
              decoration: const BoxDecoration(
                  color: Color(0xffB1E9D0),
                  borderRadius: BorderRadius.only(bottomRight:Radius.circular(10)  , bottomLeft:Radius.circular(10) )
              ),
              child: const CustomBoldText(text: 'افتراضي', size: 16  , color: AppColors.greenColor,),
            ),
            Row(
              children: [
                Radio(value: false, groupValue: false, onChanged: (value)
                {


                },

                  activeColor: AppColors.redColor,
                ),
    const CustomBoldText(text: 'المنزل', size: 20  ,),
                const Spacer(),
                IconButton(onPressed: ()
                    {

                    }, icon: const Icon(Icons.more_horiz , size: 40,))

              ],
            ),
            const CustomBoldText(text: '5-ح السيد عبدالحميد-ش دنشواي', size: 20 , color: AppColors.greyColor,),
            const CustomBoldText(text: '5-ح السيد عبدالحميد-ش دنشواييييييييييييييي', size: 20 , color: AppColors.greyColor,overFlow: TextOverflow.ellipsis,maxLine: 1,),

            const CustomBoldText(text: 'شبين الكوم-المنوفية', size: 20 , color: AppColors.greyColor,),
            SizedBox(height :context.getHeight * 0.015),
            const CustomBoldText(text: '01067859354 ', size: 20 ,),

        ],


        ),
      ),
    );
  }
}
