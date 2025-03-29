import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'fruit_container.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0 ,),
      child: SizedBox(
        width: context.actualWidth,
        height: context.isLandScape ? context.getHeight * .70 :   context.actualHeight * 0.65,
        child: GridView.builder(
          scrollDirection : Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              childAspectRatio: context.isLandScape ? 1.5: 1.53



          ),
          itemBuilder: (context, index) {
            return  const FruitContainer();

          },
        ),
      ),
    );
  }
}

