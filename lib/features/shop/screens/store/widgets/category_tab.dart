import 'package:e_commerce/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
       Padding(
        padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
        child: Column(
          children: [
            //Brands
            const BrandShowcase(images: [ConstantImages.productImage1, ConstantImages.productImage1, ConstantImages.productImage1]),
            const SizedBox(height: ConstantSizes.spaceBetweenItems),
      
            //Products
            SectionHeading(title: 'You might like', onPressed: (){}),
            const SizedBox(height: ConstantSizes.spaceBetweenItems),
      
            GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
            const SizedBox(height: ConstantSizes.spaceBetweenSections),
          ],
        ),
      ),
      ],
    );
  }
}