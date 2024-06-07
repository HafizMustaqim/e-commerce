import "package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart";
import "package:e_commerce/common/widgets/images/circular_image.dart";
import "package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart";
import "package:e_commerce/common/widgets/texts/product_price_text.dart";
import "package:e_commerce/common/widgets/texts/product_title_text.dart";
import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/enums.dart";
import "package:e_commerce/utils/constants/image_strings.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & Sale Price
        Row(
          children: [
            //Sale Tag
            RoundedContainer(
              radius: ConstantSizes.sm,
              backgroundColor: ConstantColors.accent.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: ConstantSizes.sm, vertical: ConstantSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: ConstantColors.black)),
            ),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),

            //Price
            Text('RM248.00', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),
            const ProductPriceText(price: '186.00', isLarge: true),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 1.5),
        
        //Title
        const ProductTitleText(title: 'PUMA Smash V2 Men\'s Sneakers'),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 1.5),

        //Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems / 1.5),

        //Brand
        Row(
          children: [
            CircularImage(
              image: ConstantImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? ConstantColors.white : ConstantColors.black,
            ),
            const BrandTitleWithVerification(title: 'Puma', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}