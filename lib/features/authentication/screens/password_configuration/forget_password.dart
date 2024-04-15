import 'package:e_commerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Headings
            Text(ConstantTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ConstantSizes.spaceBetweenItems),
            Text(ConstantTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: ConstantSizes.spaceBetweenSections * 2),

            //Text field
            TextFormField(
              decoration: const InputDecoration(labelText: ConstantTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(height: ConstantSizes.spaceBetweenSections),

            //Submit Button
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text('Submit')),
            ),
          ],
        ),
      )
    );
  }
}