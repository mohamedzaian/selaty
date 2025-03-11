import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';

class FavoriteScreenBody extends StatelessWidget {
  const FavoriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomBoldText(text: 'Favorite Screen', size: 20),
    );
  }
}
