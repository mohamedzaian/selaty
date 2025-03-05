import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/media_query.dart';


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
            // Get.offAll(()=>AuthScreen() , transition: Transition.rightToLeftWithFade);
          }

        pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);

      },
      child: CircleAvatar(
        radius: context.getWidth * 0.06,
        backgroundColor: color,
        child:Icon(
          FontAwesomeIcons.arrowRight,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
