import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ConstantSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(), 
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? ConstantColors.light : ConstantColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}