import 'package:flutter/material.dart';
import 'package:selaty/core/utils/images.dart';
import 'package:selaty/core/utils/media_query.dart';
import 'package:selaty/feature/onboarding/presentation/widgets/onboarding_colors.dart';
import 'package:selaty/feature/onboarding/presentation/widgets/onbording_text.dart';
import 'package:selaty/feature/onboarding/data/model/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'arrow_button.dart';
import 'onboarding_items.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  final List<OnboardingItems> list = [
    OnboardingItems(logo: AppImages.shop, text: text1, subtext: subtext1, color: list1),
    OnboardingItems(logo: AppImages.shop, text: text2, subtext: subtext2, color: list2),

    OnboardingItems(
      logo: AppImages.delivery,
      text: text3,
      subtext: subtext3,
      color: list3,
    ),


  ];

  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
         setState(() {
           currentPage = index;
         });
          },
          itemCount: 3,
          controller: pageController,
          itemBuilder: (context, index) {
            OnboardingItems onboardingItems = list[index];
            return OnboardingPage(onboardingItems: onboardingItems);
          },

        ),
        Positioned(
          bottom: context.isLandScape ? context.getWidth * 0.05 : context
              .getWidth * .3,
          left: 30,

          child: ArrowButton(color: list[currentPage].color.last,
            pageController: pageController,
            currentPage: currentPage,),),
        Positioned(
            bottom: context.isLandScape ? context.getWidth * 0.12 : context
                .getWidth * .35,
            right: context.getWidth * 0.12,

            child: SmoothPageIndicator(

              controller: pageController, // PageController
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: list[currentPage].color.last,
                  dotColor: list[currentPage].color[1],
                  dotHeight: 8,
                  dotWidth: 6

              ), // your preferred effect

            ))


      ],
    );
  }
}


