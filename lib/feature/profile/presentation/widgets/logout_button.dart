import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utils/custom_bold_text.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height:  180.h,
        width:context.isLandScape ? 260: 165.w,
        decoration: BoxDecoration(
          color: AppColors.greenColor,

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
                  color: const Color(0xff54CD98)
              ),
              child:
              const Icon(Icons.logout , size: 40, color: Colors.white,),



            ),
            const CustomBoldText(text: 'خروج', size: 20, color: Colors.white,)


          ],

        ),
      ),
    );
  }
}
