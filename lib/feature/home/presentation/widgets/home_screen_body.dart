import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'package:selaty/feature/home/presentation/widgets/search_text_field.dart';
import 'custom_carousel_slider.dart';
import 'custom_row.dart';
import 'filter_icon.dart';
import 'home_appbar.dart';

class HomeScreenBody extends StatelessWidget {
  HomeScreenBody({super.key});
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

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: context.actualHeight * 0.05),
                HomeAppBar(),
                SizedBox(height: context.actualHeight * 0.02),

                Row(children: [FilterIcon(), Spacer(), SearchTextFiled()]),
                SizedBox(height: context.actualHeight * 0.03),
                CustomRow(),
                SizedBox(height: context.actualHeight * 0.03),
                CustomCarouselSlider()



              ],
            ),
          ),
        ),
      ),
    );
  }
}


