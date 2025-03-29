import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/home/presentation/widgets/filter_icon.dart';
import 'package:selaty/feature/home/presentation/widgets/fruit_container.dart';
import 'package:selaty/feature/home/presentation/widgets/search_text_field.dart';
import 'fruit_app_bar.dart';

class FruitsScreenBody extends StatelessWidget {
  const FruitsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Fixed AppBar
        const FruitsAppBar(),

        // Search Bar and Filter (Fixed)
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilterIcon(width: 50, height: 50),
              SizedBox(width: 10), // Add spacing
              Expanded(
                child: SearchTextFiled(
                  height: 50,
                  suffixIcon: Icons.clear,
                  prefixIcon: Icons.search,
                ),
              ),
            ],
          ),
        ),

        // Scrollable Grid
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only( right: 20, left: 20, bottom: 10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isLandScape ? 4 : 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) => const FruitContainer(height: 130),
              itemCount: 8,
            ),
          ),
        ),
      ],
    );
  }
}
