import 'package:flutter/material.dart';
import 'package:selaty/core/utils/custom_bold_text.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CustomBoldText(text: 'Search Screen', size: 20),
    );
  }
}
