import 'package:flutter/material.dart';

import '../../../../core/utils/arrow_back.dart';
import 'camera_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, this.leadingIcon, this.actionIcon,
  });
  final Widget? leadingIcon ;
  final Widget? actionIcon ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      actionIcon ??  const CameraButton(),

       leadingIcon ?? const ArrowBack(),



      ],
    );
  }
}
