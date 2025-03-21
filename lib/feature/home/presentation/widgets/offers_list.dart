import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text.dart';

class OffersList extends StatelessWidget {
  const OffersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal:   10.0),
      child: SizedBox(
        height: context.actualWidth * 0.3,
        width: context.actualWidth,

        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              height: context.actualWidth * 0.3,
              width: context.isLandScape ?  context.actualWidth * 0.28 :context.actualWidth * 0.3 ,
              decoration: BoxDecoration(
                  color: const Color(0xffEC971C),
                  borderRadius: BorderRadius.circular(12)
        
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(text: 'اشتري 1', size: 20,color: Colors.white, ),
                  CustomText(text: 'احصل علي 1', size: 20,color: Colors.white, ),
                  CustomBoldText(text: 'مجانا', size: 30,color: Colors.white, )
                ],
              ),

            ),
            SizedBox(width: context.isLandScape ? 30 : 10,),
            Container(
              height: context.actualWidth * 0.3,
              width: context.isLandScape ?  context.actualWidth * 0.28 :context.actualWidth * 0.3 ,

              decoration: BoxDecoration(
                  color: const Color(0xff859D3F),
                  borderRadius: BorderRadius.circular(12)
        
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
        
                children: [
        
                  CustomBoldText(text: 'اقل', size: 28,color: Colors.white, ),
                  CustomBoldText(text: '99 SAR', size: 28,color: Colors.white, )
        
        
                ],
              )
              ,
            ),
            SizedBox(width: context.isLandScape ? 30 : 10,),
            Container(
              height: context.actualWidth * 0.3,
              width: context.isLandScape ?  context.actualWidth * 0.28 :context.actualWidth * 0.3 ,

              decoration: BoxDecoration(
                  color: const Color(0xff24B4AA),
                  borderRadius: BorderRadius.circular(12)
        
              ),
              child:
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: 'اختيارات', size: 30,color: Colors.white, ),
                  CustomText(text: 'الشهر', size: 28 , color: Colors.white,)
        
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
