import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.whiteColor,
            child: Icon(Icons.location_on_sharp , color: AppColors.redColor,)),
        CustomBoldText(text: ' المنوفية_شبين الكوم', size: 18, color: AppColors.greyColor,)
      ],
    );
  }
}
