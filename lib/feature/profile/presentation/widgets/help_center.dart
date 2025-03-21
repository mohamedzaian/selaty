import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 180.h,
        width:context.isLandScape ? 260: 165.w,
        decoration: BoxDecoration(
          color: AppColors.redColor,

          borderRadius: BorderRadius.circular(14),


        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 80,
              height:
              80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xffF26470)
              ),
              child:
              const Icon(Icons.help_center_outlined , size: 40, color: Colors.white,),



            ),
            const CustomBoldText(text: 'مركز الدعم', size: 20 ,color: Colors.white,)

          ],

        ),

      ),
    );
  }
}
