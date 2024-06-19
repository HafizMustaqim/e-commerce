import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Nursyaqhirah', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),
            Text('0193488182', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),
            Expanded(child: Text('Dengkil, Selangor', style: Theme.of(context).textTheme.bodyMedium, softWrap: true)),
          ],
        ),
      ],
    );
  }
}