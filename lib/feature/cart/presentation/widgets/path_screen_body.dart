import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/cart/data/models/timeline_model.dart';
import 'package:selaty/feature/cart/presentation/widgets/custom_timeline_tile.dart';

import '../../../../core/theme/colors.dart';

class PathScreenBody extends StatelessWidget {
   PathScreenBody({super.key});
  final List<TimeLineModel>timeLines = [
TimeLineModel(icon: Icons.featured_play_list, title: 'معالجة الطلب', subtitle: ' قيد الانتظار', isFirst: true, isLast: false, isPast: false),
TimeLineModel(icon: Icons.list, title: 'Order', subtitle: ' قيد الانتظار', isFirst: false, isLast: false, isPast: false),
TimeLineModel(icon: Icons.list, title: 'تم شحن الطلب', subtitle: ' قيد الانتظار', isFirst: false, isLast: false, isPast: false),
TimeLineModel(icon: Icons.list, title: 'خارج الخدمة', subtitle: ' قيد الانتظار', isFirst: false, isLast: false, isPast: false),
TimeLineModel(icon: Icons.check_circle, title: 'أجل تسليم', subtitle: ' قيد الانتظار', isFirst: false, isLast: true, isPast: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
        bottom: 20,
    ),
      child: SizedBox(
        width: context.actualWidth,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: context.isLandScape ?context.actualHeight * 0.02 : context.actualHeight * 0.01),

              Container(
                width: context.getWidth,
          height: context.getHeight * 0.15,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            color: AppColors.greenColor

          ),
                child:  Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0 , bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomBoldText(text: 'معرف الطلب :#OD2204', size: 20,color:Colors.white ,),
                            const CustomBoldText(text: 'تاريخ النشر 26 كانون الثاني (يناير) 2021', size: 13.5,color:Colors.white70 ,),
                            const Spacer(),
                            Row(
                              children: [
                                const CustomBoldText(text: 'البنود : 15', size: 13.5,color:Colors.white70),
                                SizedBox(width: context.getWidth * 0.08,),
                                const CustomBoldText(text: 'الاجمالي : 100 ريال', size: 13.5,color:Colors.white70)
                              ],
                            )
                          ],

                        ),
                      ),
                      const Spacer(),

                      CircleAvatar(
                        radius: context.isLandScape ? 75: 65,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.local_cafe_outlined , size: 60,),
                      )

                    ],
                  ),
                ),


              ),
              SizedBox(height: context.isLandScape ?context.actualHeight * 0.03 : context.actualHeight * 0.01),


              Container(
                width: context.getWidth,
          height: context.getHeight * 0.58,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.whiteColor

          ),


              child:
                SizedBox(
                  height: context.getHeight * 0.58,
                  width: context.getWidth * 0.8,


                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                      itemBuilder: (context , i)
                  {
                    return CustomTimelineTile(isFirst: timeLines[i].isFirst, isLast: timeLines[i].isLast, isPast: timeLines[i].isPast, icon: timeLines[i].icon, title: timeLines[i].title, subtitle: timeLines[i].subtitle);
                  }),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
