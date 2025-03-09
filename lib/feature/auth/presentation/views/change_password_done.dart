import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/feature/auth/presentation/widgets/change_password_done_body.dart';

class ChangePasswordDone extends StatelessWidget {
  const ChangePasswordDone({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.greenColor,
      body: ChangePasswordDoneBody(),
    );
  }
}
