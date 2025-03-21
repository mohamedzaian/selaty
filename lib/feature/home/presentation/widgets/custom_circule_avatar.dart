import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key, this.icon, this.radius,
  });
  final IconData? icon;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: AppColors.redColor,
      radius:radius ??  17,
      child: Icon(icon ?? Icons.arrow_back_ios_new , color: Colors.white ,),
    );
  }
}
