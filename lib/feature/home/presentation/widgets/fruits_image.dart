import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import '../../../../generated/assets.dart';

class FruitsImage extends StatelessWidget {
  const FruitsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: context.getHeight * 0.25,
        width: context.actualWidth,
        decoration:
        BoxDecoration(


            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.9), // Shadow color
                spreadRadius: 1, // Spread size
                blurRadius: 8, // Blur effect
                offset: const Offset(2, 4), // Shadow position (x, y)
              ),
            ],

            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(image:
            AssetImage(Assets.imagesFruitsImg)
                ,
                fit: BoxFit.cover)
        ),

      ),
    );
  }
}
