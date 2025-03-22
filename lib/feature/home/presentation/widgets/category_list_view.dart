import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';

import 'category_container.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getWidth * .26,
      width: context.actualWidth,
      child: ListView.separated(
        // Removed Expanded
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryContainer();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 10);
        },
        itemCount: 10,
      ),
    );
  }
}

