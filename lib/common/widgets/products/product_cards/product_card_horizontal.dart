import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ConstantSizes.productImageRadius),
        color: dark ? ConstantColors.darkerGrey : ConstantColors.lightContainer,
      ),
      child: Row(
        children: [
          //Thumbnail
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ConstantSizes.sm),
            backgroundColor: dark ? ConstantColors.dark : ConstantColors.light,
            child: Stack(
              children: [
                //Thumnail Image
                // const SizedBox(
                //   height: 120,
                //   width: 120,
                const RoundedImage(imageUrl: ConstantImages.productImage1, applyImageRadius: true),
                // ),

                //Sale Tag
                Positioned(
                  top: 5,
                  child: RoundedContainer(
                    radius: ConstantSizes.sm,
                    backgroundColor: ConstantColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: ConstantSizes.sm, vertical: ConstantSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: ConstantColors.black)),
                  ),
                ),
    
                //Favourite Icon Button
                const Positioned(
                  top: 5,
                  right: 0,
                  child: CircularIcon(icon: Iconsax.heart5, color: Colors.red)
                ),
              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: ConstantSizes.sm, left: ConstantSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'PUMA Smash V2 Men\'s Sneakers', smallSize: true),
                      SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
                      BrandTitleWithVerification(title: 'Puma')
                    ]
                  ),
                  
                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Pricing
                      const Flexible(child: ProductPriceText(price: 'RM180.00')),

                      //Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: ConstantColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ConstantSizes.cardRadiusMd),
                            bottomRight: Radius.circular(ConstantSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: ConstantSizes.iconLg * 1.2,
                          height: ConstantSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: ConstantColors.white))
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}