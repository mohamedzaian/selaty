import 'package:flutter/material.dart';
import 'package:selaty/feature/auth/presentation/widgets/custom_appbar.dart';
import 'package:selaty/feature/cart/presentation/widgets/path_screen_body.dart';

class PathScreen  extends StatelessWidget {
  const PathScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomAppBar(
            centerText: "ترتيب المسار",
          ),
        ),

      ),
      body: SafeArea(child: PathScreenBody()),
    );
  }
}
