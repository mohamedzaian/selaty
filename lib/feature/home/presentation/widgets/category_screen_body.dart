import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/arrow_back.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/widgets/camera_button.dart';
import 'package:selaty/feature/auth/presentation/widgets/custom_appbar.dart';
import 'package:selaty/feature/home/presentation/widgets/category_container.dart';

class CategoryScreenBody extends StatelessWidget {
  const CategoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        physics:  const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const CustomAppBar(
              centerText: 'التصنيفــــ  ات',
              actionIcon: ArrowBack(
                width: 40,
                height: 40,

                borderColor: Colors.white,
              ),
              leadingIcon: CameraButton(
                width: 40,
                height: 40,
                borderColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: context.actualWidth * 0.8,
              height: context.actualHeight * 0.9,
              child: GridView.builder(
                physics:  const NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.isLandScape ? 4 : 2,
                  mainAxisSpacing: 20,
                  childAspectRatio:  context.isLandScape ? 1.5 : 1.1
                ),
                itemBuilder: (context, i) {
                  return  CategoryContainer(
                    bottom: context.isLandScape ? 10 : 20,
                    radius: context.isLandScape ? 40.r :  35.r,
                    heightFactor:  context.isLandScape ?  .5.h : .4.h,
                    width: context.getWidth * .34,
                    backGroundColor: null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
