import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.actualWidth * 0.8,

      height: 350.h ,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount:  9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          childAspectRatio: 1


        ),
        itemBuilder: (_ , i)
        {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
            ),
            child: const Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person , color: AppColors.redColor,size: 40,),
                CustomBoldText(text: 'عـلي', size: 16)

              ],
            ),
          );
        },
      ),
    );
  }
}
