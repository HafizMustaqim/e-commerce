import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CommonSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
               //Image
              // Lottie.asset(image, width: MediaQuery.of(context).size.width * 0.6),
              Image(image: AssetImage(image), width: HelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              //Title & Sub Title
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text('Continue'))),
            ],
          ),

        ),
      ),
    );
  }
}