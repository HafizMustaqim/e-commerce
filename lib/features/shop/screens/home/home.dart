import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  HomeAppBar(),
                  SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Searchbar
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Categories
                  Padding(padding: EdgeInsets.only(left: ConstantSizes.defaultSpace), 
                    child: Column(
                      children: [
                        //Heading
                        SectionHeading(title: 'Popular Categories', showActionButton: false, textColor: ConstantColors.white),
                        SizedBox(height: ConstantSizes.spaceBetweenItems),

                        //Categories
                        HomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: ConstantSizes.spaceBetweenSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
              child: Column(
                children: [
                  //Promo Slider
                  const PromoSlider(banners: [ConstantImages.promoBanner1, ConstantImages.promoBanner2, ConstantImages.promoBanner3]),
                  const SizedBox(height: ConstantSizes.spaceBetweenItems),

                  //Heading
                  SectionHeading(title: 'Popular Products', onPressed: (){}),
                  const SizedBox(height: ConstantSizes.spaceBetweenItems),

                  //Popular Products
                  GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
