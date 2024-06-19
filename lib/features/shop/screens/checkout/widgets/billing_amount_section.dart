import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('RM200.00', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),

        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('RM10.00', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('RM1.00', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),

        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('RM300.00', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}