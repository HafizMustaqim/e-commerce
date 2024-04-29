import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ConstantImages.onBoardingImage1,
                title: ConstantTexts.onBoardingTitle1,
                subTitle: ConstantTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ConstantImages.onBoardingImage2,
                title: ConstantTexts.onBoardingTitle2,
                subTitle: ConstantTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ConstantImages.onBoardingImage3,
                title: ConstantTexts.onBoardingTitle3,
                subTitle: ConstantTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
