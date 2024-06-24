import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              const SectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              //Brands
              GridLayout(itemCount: 10, mainAxisExtent: 80, itemBuilder: (context, index) => BrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const BrandProducts())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}