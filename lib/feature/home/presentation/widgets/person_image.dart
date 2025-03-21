import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/feature/profile/presentation/views/profile_screen.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/images.dart';

class PersonImage extends StatelessWidget {
  const PersonImage({
    super.key, this.radius1, this.radius2, this.color,
  });
  final double? radius1 ;
  final double? radius2 ;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
         Get.to(()=> const ProfileScreen() ,transition: Transition.leftToRightWithFade)
        ;
      },
      child: CircleAvatar(
        radius: radius1 ?? 33,
        backgroundColor: color ?? AppColors.whiteColor,
        child:
         CircleAvatar(
          radius: radius2 ?? 30,
          backgroundImage: const AssetImage(AppImages.person),
        ),
      ),
    );
  }
}
