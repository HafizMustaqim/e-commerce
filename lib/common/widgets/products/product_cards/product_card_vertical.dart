import 'package:e_commerce/common/styles/shadows.dart';
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

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ConstantSizes.productImageRadius),
          color: dark ? ConstantColors.darkGrey : ConstantColors.white,
        ),
        child: Column(
          children: [
            // Thumbnails, Wishlist Button, Discount Tag
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ConstantSizes.sm), //===============check again the sizing!!===============
              backgroundColor: dark ? ConstantColors.dark : ConstantColors.light,
              child: 
              Stack(
                children: [
                  // Thumbnails image
                  const RoundedImage(imageUrl: ConstantImages.productImage1, applyImageRadius: true),
      
                  //Sale Tag
                  Positioned(
                    top: 5,
                    child: RoundedContainer(
                      radius: ConstantSizes.sm,
                      backgroundColor: ConstantColors.accent.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: ConstantSizes.sm, vertical: ConstantSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: ConstantColors.black)),
                    ),
                  ),
      
                  //Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(icon: Iconsax.heart5, color: Colors.red)
                  ),
                ],
              ),
            ),
            const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
      
            //Details
            const Padding(
              padding: EdgeInsets.only(left: ConstantSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(title: 'PUMA Smash V2 Men\'s Sneakers', smallSize: true),
                  SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
                  BrandTitleWithVerification(title: 'Puma'),
                ],
              ),
            ),

            const Spacer(),

            //Price Row    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const Padding(
                  padding: EdgeInsets.only(left: ConstantSizes.sm),
                  child: ProductPriceText(price: '179.00'),
                ),

                //Add to cart button
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
            )
          ],
        ),
      ),
    );
  }
}
