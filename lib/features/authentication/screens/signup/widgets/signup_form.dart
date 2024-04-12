import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: ConstantTexts.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: ConstantSizes.spaceBetweenInputFields),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: ConstantTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ]
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
    
        //Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: ConstantTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
    
        //Email
        TextFormField(
          decoration: const InputDecoration(labelText: ConstantTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
    
        //Phone Number
        TextFormField(
          decoration: const InputDecoration(labelText: ConstantTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
        
        //Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: ConstantTexts.password, 
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenSections),
    
        //Terms & Conditions Checkbox
        const TermsAndConditionsCheckbox(),
        const SizedBox(height: ConstantSizes.spaceBetweenSections),
      
        //Sign Up Button
        SizedBox(
          width: double.infinity, 
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen() ), 
            child: const Text(ConstantTexts.createAccount),
          ),
        ),
      ],
    ),
    );
  }
}