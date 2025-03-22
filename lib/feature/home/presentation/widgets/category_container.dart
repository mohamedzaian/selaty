import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../generated/assets.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key, this.width, this.radius, this.heightFactor,  this.bottom,
  });

  final double? width;
  final double? radius;

  final double? heightFactor;
  final double? bottom ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:
      Alignment.center, // Centers the content inside Stack
      children: [
        Container(
          width: width ?? context.getWidth * .26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Align(
            alignment:
            Alignment
                .bottomCenter, // Moves the white box to the bottom half
            child: FractionallySizedBox(
              heightFactor: heightFactor ?? 0.5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.imagesFruitsCategory,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
             SizedBox(height: bottom ?? 5,),
            const CustomBoldText(
              text: 'فواكة',
              size: 16,
              color: Colors.black,
            ),
            const SizedBox(height: 10), // Added space
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: radius ??  26,
              child:  CircleAvatar(
                radius: radius == null  ?   23 : radius! + 3,
                backgroundColor: AppColors.yellowColor,

                child: CircleAvatar(
                  radius: radius == null  ?   20 : radius! + 3,
                  backgroundColor: AppColors.yellowColor,
                  backgroundImage: const AssetImage(
                    Assets.imagesCategoryIcon,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}