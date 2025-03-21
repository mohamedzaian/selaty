import 'package:flutter/material.dart';
import 'package:selaty/feature/search/presentation/widgets/search_screen_body.dart';

import '../../../../core/theme/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.greyColor,
      body: SearchScreenBody(),
    );
  }
}
