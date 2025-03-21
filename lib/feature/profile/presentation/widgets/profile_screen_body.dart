import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/arrow_back.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/camera_button.dart';
import 'package:selaty/feature/profile/presentation/widgets/profile_box.dart';
import 'package:selaty/feature/profile/presentation/widgets/profile_grid_view.dart';

import 'help_center.dart';
import 'logout_button.dart';



class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.r),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          spacing: context.isLandScape ? 20 :5,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CameraButton(borderColor: Colors.white),
                ArrowBack(borderColor: Colors.white),
              ],
            ),
            ProfileBox(),
             SizedBox(),
             ProfileGridView(),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                LogoutButton(),  HelpCenter(),
              ],
            )

          ],
        ),
      ),
    );
  }
}



