import 'package:e_commerce/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value, 
              onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value
            ),
          ),
        ),
        // const SizedBox(width: ConstantSizes.spaceBetweenItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: '${ConstantTexts.iAggreeTo} ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${ConstantTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? ConstantColors.white : ConstantColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? ConstantColors.white : ConstantColors.primary,
            )),
            TextSpan(text: ' and ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${ConstantTexts.termsOfUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? ConstantColors.white : ConstantColors.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark ? ConstantColors.white : ConstantColors.primary,
            )),
          ])
        )
      ],
    );
  }
}