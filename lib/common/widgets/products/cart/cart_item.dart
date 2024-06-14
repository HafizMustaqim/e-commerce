import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        RoundedImage(
          imageUrl: ConstantImages.productImage1,
          width: 60,
          height: 60,
          // padding: const EdgeInsets.all(ConstantSizes.md),
          backgroundColor: HelperFunctions.isDarkMode(context) ? ConstantColors.darkerGrey : ConstantColors.light,
        ),
        const SizedBox(width: ConstantSizes.spaceBetweenItems),
    
        //Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerification(title: 'Puma'),
              const Flexible(child: ProductTitleText(title: 'PUMA Smash V2 Men\'s Sneakers', maxlines: 1)),
              //Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'White ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'EU 36 ', style: Theme.of(context).textTheme.bodyLarge),
                  ], 
                ),
              ),
            ]
          ),
        ),
      ],
    );
  }
}