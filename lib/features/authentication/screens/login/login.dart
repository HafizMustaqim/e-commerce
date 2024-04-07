import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CommonSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? constantImages.lightAppLogo : constantImages.darkAppLogo),
                  ),
                  Text(ConstantTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: ConstantSizes.sm),
                  Text(ConstantTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: ConstantSizes.spaceBetweenSections),
                  child: Column(
                    children: [
                      //Email
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: ConstantTexts.email),
                      ),
                      const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
                  
                      //Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: ConstantTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: ConstantSizes.spaceBetweenInputFields / 2),
                  
                      //Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(ConstantTexts.rememberMe),
                            ],
                          ),
                  
                          TextButton(onPressed: () {}, child: const Text(ConstantTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(height: ConstantSizes.spaceBetweenSections),
                  
                      //Sign In Button
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(ConstantTexts.signIn))),
                      const SizedBox(height: ConstantSizes.spaceBetweenItems),
                      
                      //Create Account Button
                      SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(ConstantTexts.createAccount))),
                      const SizedBox(height: ConstantSizes.spaceBetweenSections),
                    ],
                  ),
                ),
              ),

              //Divider
              
              //Footer
            ],
          )
        ),
      ),
    );
  }
}