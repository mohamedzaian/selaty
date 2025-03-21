import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../core/utils/custom_text.dart';
import '../../../home/presentation/widgets/custom_circule_avatar.dart';
import '../../../home/presentation/widgets/person_image.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: context.actualWidth * 0.8,
          height:
          context.isLandScape
              ? context.actualHeight * 0.7
              : context.actualHeight * 0.22,

          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,

            heightFactor: .7,
            child: Align(
              child: Container(
                width: context.actualWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.greenColor,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomBoldText(
                      text: 'مصطفي الاعصر',
                      size: 22,
                      color: Colors.white,
                    ),
                    CustomText(
                      text: 'mostafa3210551@gmail.com',
                      size: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: context.isLandScape ? 180.w : 100.w,

          child: PersonImage(
            radius1: 70.r,
            radius2: 55.r,
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        Positioned(
          top: 90.h,
          right: context.isLandScape ? 180.w : 120.w,
          child: CustomCircleAvatar(
            radius: 20.r,
            icon: Icons.camera_alt,
          ),
        ),
      ],
    );
  }
}
