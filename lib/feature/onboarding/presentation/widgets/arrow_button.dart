import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/auth/presentation/views/auth_screen.dart';


class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
    required this.color, required this.pageController, required this.currentPage,
  });

  final Color color;
  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        if(currentPage == 2)
          {
            Get.offAll(()=>const AuthScreen() , transition: Transition.rightToLeftWithFade);
          }

        pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);

      },
      child: CircleAvatar(
        radius: context.getWidth * 0.06,
        backgroundColor: color,
        child:const Icon(
          FontAwesomeIcons.arrowLeft,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
