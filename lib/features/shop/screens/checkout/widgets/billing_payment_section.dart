import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
        Row(
          children: [
            RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? ConstantColors.light : ConstantColors.white,
              padding: const EdgeInsets.all(ConstantSizes.sm),
              child: const Image(image: AssetImage(ConstantImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(width: ConstantSizes.spaceBetweenItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}