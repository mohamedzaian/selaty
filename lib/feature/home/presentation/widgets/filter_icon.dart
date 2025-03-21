import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getWidth * .16,
      width: context.getWidth * .16,
      decoration: BoxDecoration(
        color: AppColors.redColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        FontAwesomeIcons.slidersH,
        size: 32,
        color: Colors.white,
      ),
    );
  }
}
