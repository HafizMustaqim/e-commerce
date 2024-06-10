import "package:e_commerce/common/widgets/texts/section_heading.dart";
import "package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart";
import "package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart";
import "package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart";
import "package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart";
import "package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "package:readmore/readmore.dart";

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            const ProductImageSlider(),

            //Product Details
            Padding(
              padding: const EdgeInsets.only(right: ConstantSizes.defaultSpace, left: ConstantSizes.defaultSpace, bottom: ConstantSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating & Share
                  const RatingAndShare(),

                  //Price, Title, Stock & Brand
                  const ProductMetaData(),
                  
                  //Attributes
                  const ProductAttributes(),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Description
                  const SectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: ConstantSizes.spaceBetweenItems),
                  const ReadMoreText(
                    'Description Description Description Description Description Description Description Description Description',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(title: 'Reviews (300)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right3, size: 18), onPressed: () {}),
                    ],
                  ),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
