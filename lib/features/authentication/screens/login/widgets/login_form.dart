import 'package:e_commerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ConstantSizes.spaceBetweenSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct), labelText: ConstantTexts.email),
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
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ConstantTexts.rememberMe),
                  ],
                ),

                //Forget Password
                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(ConstantTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: ConstantSizes.spaceBetweenSections),
        
            //Sign In Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(ConstantTexts.signIn))),
            const SizedBox(height: ConstantSizes.spaceBetweenItems),
            
            //Create Account Button
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(ConstantTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
