import "package:e_commerce/common/widgets/chips/chips.dart";
import "package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart";
import "package:e_commerce/common/widgets/texts/product_price_text.dart";
import "package:e_commerce/common/widgets/texts/product_title_text.dart";
import "package:e_commerce/common/widgets/texts/section_heading.dart";
import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Selected attributes Pricing & Description
        RoundedContainer(
          padding: const EdgeInsets.all(ConstantSizes.md),
          backgroundColor: dark ? ConstantColors.darkerGrey : ConstantColors.grey,
          child: Column(
            children: [
              //Title, Price & Stock Status
              Row(
                children: [
                  const SectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: ConstantSizes.spaceBetweenItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(title: 'Price :', smallSize: true),

                          //Actual Price
                          Text(
                            'RM248.00',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: ConstantSizes.spaceBetweenItems),

                          //Sale Price
                          const ProductPriceText(price: '186.00'),
                        ],
                      ),

                      //Stock
                      Row(
                        children: [
                          const ProductTitleText(title: 'Stock :', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),

                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //Variation Description
              const ProductTitleText(
                title: 'Description Description Description Description Description',
                smallSize: true,
                maxlines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(text: 'White', selected: true, onSelected: (value) {}),
                CustomChoiceChip(text: 'Brown', selected: true, onSelected: (value) {}),
                CustomChoiceChip(text: 'Black', selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                CustomChoiceChip(text: 'EU 36', selected: true, onSelected: (value) {}),
                CustomChoiceChip(text: 'EU 38', selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}