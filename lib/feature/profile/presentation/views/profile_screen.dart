import 'package:flutter/material.dart';
import 'package:selaty/feature/profile/presentation/widgets/profile_screen_body.dart';

import '../../../../core/theme/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(child: ProfileScreenBody()),
    );
  }
}
