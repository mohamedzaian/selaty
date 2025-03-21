import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';
import 'package:selaty/core/utils/custom_text.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/home/data/models/offer_model.dart';
import 'package:selaty/feature/home/presentation/widgets/offers_list.dart';

import 'package:selaty/feature/home/presentation/widgets/search_text_field.dart';
import '../../../../generated/assets.dart';
import 'category_list_view.dart';
import 'custom_carousel_slider.dart';
import 'custom_circule_avatar.dart';
import 'custom_row.dart';
import 'filter_icon.dart';
import 'fruits_image.dart';
import 'home_appbar.dart';
import 'home_grid_view.dart';
import 'sale_list.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({super.key});
  final List<OfferModel> offers = [
    OfferModel(percent: '30%', color: const Color(0xff736C8B)),
    OfferModel(percent: '40%', color: const Color(0xff35A2FF)),
    OfferModel(percent: '50%', color: const Color(0xffEF3F4C)),
  ];
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: context.actualHeight * 0.05),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: HomeAppBar(),
                ),
                SizedBox(height: context.actualHeight * 0.02),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),

                  child: Row(
                    children: [FilterIcon(), Spacer(), SearchTextFiled()],
                  ),
                ),
                SizedBox(height: context.actualHeight * 0.03),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),

                  child: CustomRow(),
                ),
                SizedBox(height: context.actualHeight * 0.01),
                const CustomCarouselSlider(),
                SizedBox(height: context.actualHeight * 0.01),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),

                  child: CustomRow(
                    rightWidget: CustomBoldText(text: 'التصنيقات', size: 18),
                    centerWidget: Text(''),
                  ),
                ),
                SizedBox(height: context.actualHeight * 0.01),
                const CategoryListView(),
                SizedBox(height: context.actualHeight * 0.01),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomRow(
                    centerWidget: Text(''),
                    rightWidget: CustomBoldText(text: 'الاكثر مبيعا', size: 20),
                  ),
                ),
                SizedBox(height: context.actualHeight * 0.01),
                const HomeGridView(),
                SizedBox(height: context.actualHeight * 0.03),
                const FruitsImage(),
                SizedBox(height: context.actualHeight * 0.03),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomRow(
                    centerWidget: Text(''),
                    rightWidget: CustomBoldText(
                      text: 'تسوق حسب العرض',
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: context.actualHeight * 0.02),

                SalesList(offers: offers),
                SizedBox(height: context.actualHeight * 0.03),
                const OffersList(),
                SizedBox(height: context.actualHeight * 0.01),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomRow(
                    rightWidget: CustomBoldText(text: 'طازج وسريع', size: 22),
                    centerWidget: Text(''),
                    leftWidget: Text(''),
                  ),
                ),
                SizedBox(height: context.actualHeight * 0.01),

                const HomeGridView(),
                SizedBox(height: context.actualHeight * 0.02),

                const FruitsImage(),
                SizedBox(height: context.actualHeight * 0.02),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomRow(
                    rightWidget: CustomBoldText(text: 'انتهز الفرصة', size: 22),
                    centerWidget: Text(''),
                  ),
                ),
                SizedBox(height: context.actualHeight * 0.01),

                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child:
                  Stack(
                    children: [
                      SizedBox(
                        height: context.actualWidth * .5,
                        width: context.actualWidth,

                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Container(
                              height: context.actualWidth * .3,
                              width: context.actualWidth * 0.38,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                      0.2,
                                    ), // Shadow color
                                    spreadRadius: 1, // Spread size
                                    blurRadius: 8, // Blur effect
                                    offset: const Offset(
                                      2,
                                      4,
                                    ), // Shadow position (x, y)
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(height: context.actualHeight * 0.01),
                                  const CustomText(
                                    text: 'طبق فواكة',
                                    size: 14,
                                    color: Colors.grey,
                                  ),

                                  const CustomBoldText(
                                    text: 'خصم 25% بدون فوائد',
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                  Image.asset(Assets.imagesFruits),
                                  const Spacer(),
                                  Container(
                                    height: context.getWidth * 0.09,
                                    width: context.getWidth * 0.38,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                      ),
                                      color: Color(0xffE0E0E0),
                                    ),
                                  ),

                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, i) {
                            return const SizedBox(width: 15);
                          },
                          itemCount: 6,
                        ),
                      ),
                      Positioned(
                        bottom: context.actualHeight * 0.02,
                        right: context.actualHeight * 0.01,
                        child: const CustomCircleAvatar(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

