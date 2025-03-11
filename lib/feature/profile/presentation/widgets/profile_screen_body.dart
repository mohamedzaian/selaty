import 'package:flutter/material.dart';

import '../../../../core/utils/custom_bold_text.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomBoldText(text: 'Profile Screen', size: 20,)
    );
  }
}
