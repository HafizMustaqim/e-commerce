import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
          child: Column(
            children: [
               
              //Image
              Image(image: const AssetImage(ConstantImages.deliveredEmailIllustration), width: HelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              //Title & Sub Title
              Text(ConstantTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),
              Text(ConstantTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text('Done'))),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(ConstantTexts.resendEmail))),

            ],
          ),
        ),
      ),
    );
  }
}