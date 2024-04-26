import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
      
                    //Brands Grid
                    GridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                      return const BrandCard(showBorder: false);
                    },
                    ),
                  ],
                ),
              ),
      
              //Tabs
              bottom: const CustomTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ];
        }, 
        //Body
        body: const TabBarView(
          children: [
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
            CategoryTab(),
          ],
        ),
        ),
      ),
    );
  }
}
