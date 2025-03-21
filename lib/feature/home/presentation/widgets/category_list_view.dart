import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';
import '../../../../generated/assets.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getWidth * .26,
      width: context.actualWidth,
      child: ListView.separated(
        // Removed Expanded
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            alignment:
            Alignment.center, // Centers the content inside Stack
            children: [
              Container(
                width: context.getWidth * .26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Align(
                  alignment:
                  Alignment
                      .bottomCenter, // Moves the white box to the bottom half
                  child: FractionallySizedBox(
                    heightFactor: 0.5,
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
              const Column(
                children: [
                  SizedBox(height: 10,),
                  CustomBoldText(
                    text: 'فواكة',
                    size: 16,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5), // Added space
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 26,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundColor: AppColors.yellowColor,

                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.yellowColor,
                        backgroundImage: AssetImage(
                          Assets.imagesCategoryIcon,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemCount: 10,
      ),
    );
  }
}
