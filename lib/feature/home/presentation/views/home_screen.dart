import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor:AppColors.backgroundColor ,
      body: HomeScreenBody(),
    );
  }
}
