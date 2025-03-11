import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/images.dart';

class PersonImage extends StatelessWidget {
  const PersonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33,
      backgroundColor: AppColors.whiteColor,
      child:
      CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(AppImages.person),
      ),
    );
  }
}
