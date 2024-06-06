import "package:e_commerce/common/widgets/appbar/appbar.dart";
import "package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart";
import "package:e_commerce/common/widgets/icons/circular_icon.dart";
import "package:e_commerce/common/widgets/images/rounded_image.dart";
import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/image_strings.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark ? ConstantColors.darkerGrey : ConstantColors.light,
        child: Stack(
          children: [
            //Main Large Image
            const SizedBox(
              height: 400, 
              child: Padding(
                padding: EdgeInsets.all(ConstantSizes.productImageRadius * 2),
                child: Center(child: Image(image: AssetImage(ConstantImages.productImage1))),
              )
            ),
    
            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: ConstantSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: ConstantSizes.spaceBetweenItems), 
                  itemCount: 6, 
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    backgroundColor: dark ? ConstantColors.dark : ConstantColors.white,
                    border: Border.all(color: ConstantColors.primary),
                    padding: const EdgeInsets.all(ConstantSizes.sm),
                    imageUrl: ConstantImages.productImage2,
                  ),
                ),
              ),
            ),
    
            //Appbar Icons
            const CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            )
    
          ],
        ),
      ),
    );
  }
}