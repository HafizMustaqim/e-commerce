import 'package:e_commerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormkey,
      child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller.firstName,
                validator: (value) => Validator.validateEmptyText('First name', value),
                expands: false,
                decoration: const InputDecoration(labelText: ConstantTexts.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: ConstantSizes.spaceBetweenInputFields),
            Expanded(
              child: TextFormField(
                controller: controller.lastName,
                validator: (value) => Validator.validateEmptyText('Last name', value),
                expands: false,
                decoration: const InputDecoration(labelText: ConstantTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ]
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
    
        //Username
        TextFormField(
          controller: controller.username,
          validator: (value) => Validator.validateEmptyText('Username', value),
          expands: false,
          decoration: const InputDecoration(labelText: ConstantTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
    
        //Email
        TextFormField(
          controller: controller.email,
          validator: (value) => Validator.validateEmail(value),
          decoration: const InputDecoration(labelText: ConstantTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
    
        //Phone Number
        TextFormField(
          controller: controller.phoneNumber,
          validator: (value) => Validator.validatePhoneNumber(value),
          decoration: const InputDecoration(labelText: ConstantTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenInputFields),
        
        //Password
        Obx(
          () => TextFormField(
            controller: controller.password,
            validator: (value) => Validator.validatePassword(value),
            obscureText: controller.hidePassword.value,
            decoration: InputDecoration(
              labelText: ConstantTexts.password, 
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
              ),
            ),
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
            onPressed: () => controller.signup(), 
            child: const Text(ConstantTexts.createAccount),
          ),
        ),
      ],
    ),
    );
  }
}