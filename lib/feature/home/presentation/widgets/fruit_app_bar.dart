import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/utils/arrow_back.dart';
import '../../../../generated/assets.dart';
import '../../../auth/presentation/widgets/camera_button.dart';
import '../../../auth/presentation/widgets/custom_appbar.dart';
import 'circle_image.dart';

class FruitsAppBar extends StatelessWidget {
  const FruitsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [

        SizedBox(
          height: context.isLandScape ? context.getHeight * .20 : context.getHeight * .24 ,
          width: context.actualWidth,
          child: FractionallySizedBox(
            heightFactor: context.isLandScape ?  .75:.82,
            alignment:Alignment.topCenter ,

            child: Container(
              height: context.getHeight * .2,
              width: context.actualWidth,
              color: const Color(0xff5DB15C),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.actualWidth * .15),
                  child: const CustomAppBar(
                    textSize: 24,
                    textColor: Colors.white,
                    centerText: 'الفاكهة',
                    actionIcon: CameraButton(
                      width: 40,
                      height: 40,
                      borderColor: Colors.white,
                    ),
                    leadingIcon: ArrowBack(
                      height: 40,
                      width: 40,
                      borderColor: Colors.white,
                    ),


                  ),
                ),
              ),

            ),
          ),
        ),
        Positioned(
            bottom: 0,
            right:context.isLandScape ?  context.actualWidth  * 0.41 :  context.actualWidth  * 0.38,

            child:  CircleAvatar(
              radius: context.isLandScape ? 70.r: 50.r,
              backgroundColor: Colors.white.withOpacity(.3),

              child: CircleImage(
                  radius: context.isLandScape ? 55.r : 35.r,
                  image: Assets.imagesFruitIcon,
                  backGroundColor: Colors.white

              ),
            ))


      ],
    );
  }
}
