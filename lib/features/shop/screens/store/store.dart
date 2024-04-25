import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(onPressed: (){}),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: HelperFunctions.isDarkMode(context) ? ConstantColors.black : ConstantColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  //SearchBar
                  const SizedBox(height: ConstantSizes.spaceBetweenItems),
                  const SearchContainer(text: '', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Featured Brands
                  SectionHeading(title: 'Featured Brands', onPressed: (){}),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections / 1.5),

                  GridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                    return GestureDetector(
                    onTap: (){},
                    child: RoundedContainer(
                      padding: const EdgeInsets.all(ConstantSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          //Icon
                          Flexible(
                            child: CircularImage(
                              isNetworkImage: false,
                              image: ConstantImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              overlayColor: HelperFunctions.isDarkMode(context) ? ConstantColors.white : ConstantColors.black,
                            ),
                          ),
                          const SizedBox(width: ConstantSizes.spaceBetweenItems / 2),
                    
                          //Text
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BrandTitleWithVerification(title: 'Makerz', brandTextSize: TextSizes.large),
                                Text(
                                  '100 products',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ];
      }, body: Container()),
    );
  }
}
