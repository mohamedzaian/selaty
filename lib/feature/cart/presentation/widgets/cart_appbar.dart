import 'package:flutter/material.dart';

import '../../../../core/utils/arrow_back.dart';
import '../../../auth/presentation/widgets/camera_button.dart';
import '../../../auth/presentation/widgets/custom_appbar.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      leadingIcon: CameraButton(borderColor: Colors.white),
      actionIcon: ArrowBack(borderColor: Colors.white),
      centerText: 'عربة التسوق',
      textSize: 22,
    );
  }
}
