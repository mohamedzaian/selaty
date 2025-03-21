import 'package:flutter/material.dart';
import 'package:selaty/feature/home/presentation/widgets/person_image.dart';
import 'package:selaty/feature/home/presentation/widgets/user_location.dart';
import 'package:selaty/feature/home/presentation/widgets/user_name.dart';

import '../../../../core/theme/colors.dart';
import '../../../auth/presentation/widgets/camera_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PersonImage(),
        Column(
          children: [
            UserName(),
            UserLocation()
          ],
        ),
        Spacer(),
        CameraButton(borderColor:AppColors.whiteColor,)
      ],
    );
  }
}
