import 'package:flutter/material.dart';
import 'package:selaty/core/theme/colors.dart';
import 'package:selaty/feature/home/presentation/widgets/category_screen_body.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      backgroundColor: AppColors.backgroundColor ,
      body: SafeArea(
        child: CategoryScreenBody(
        
        ),
      ),
    );
  }
}
