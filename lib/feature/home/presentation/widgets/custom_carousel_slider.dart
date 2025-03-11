import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../core/utils/images.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: context.actualHeight  * 0.15),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image:
                  AssetImage(AppImages.fruitCategory),
                      fit: BoxFit.fill)



              ),
            );
          },
        );
      }).toList(),
    );
  }
}
