import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text.dart';
import '../../../../generated/assets.dart';

class FruitContainer extends StatelessWidget {
  const FruitContainer({
    super.key, this.height, this.width,
  });
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Shadow color
            spreadRadius: 0, // Spread size
            blurRadius: 6, // Blur effect
            offset: const Offset(5, 40), // Shadow position (x, y)
          ),
        ],


      ),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: context.getWidth * 0.03,),
          Row(
            children: [
              Container(
                height: context.getWidth * .06,
                width:context.getWidth * 0.12,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
                    color: AppColors.greenColor
                ),
                child: const Center(child: CustomText(text: 'جديد', size: 16, color: Colors.white,)),
              ),
              context.isLandScape ? const Spacer():SizedBox(
                width: context.actualWidth * 0.2,
              ),
              IconButton(onPressed: ()

              {

              }, icon: const Icon(Icons.favorite ,color: AppColors.greenColor, size: 33,)),

            ],
          ),
          Center(child: Image.asset(Assets.imagesFruits , scale: 6,),),
          SizedBox(
            height: context.getWidth * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height:  context.getWidth * .06,
                width:context.getWidth * 0.20,
                decoration: BoxDecoration(
                  color : AppColors.yellowColor,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CustomText(text: 'فواكة', size: 14  , color: AppColors.whiteColor ),
                ),

              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Align(
                alignment: Alignment.centerRight,
                child: CustomBoldText(text: 'طبق فواكة', size: 14, color: Colors.grey)),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Align(alignment : Alignment.centerRight ,
                child: CustomBoldText(text: 'kg 1', size: 14 , color: Colors.grey,)),
          ) ,
          const Spacer(),
          Container(
              height: context.getWidth * 0.095,
              width: context.actualWidth * 0.6,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(12) ,bottomLeft: Radius.circular(12) ),
                  color: Color(0xffE0E0E0)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    CustomBoldText(text: '40 EGP', size: 16 , color: Colors.black,),
                    Spacer(),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xffF03E48),
                      child: Icon(Icons.shopping_bag_outlined , color: Colors.white,) ,
                    )
                  ],
                ),
              )
          ),




        ],
      ),

    );
  }
}
