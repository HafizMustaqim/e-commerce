import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  HomeAppBar(),
                  SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Searchbar
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: ConstantSizes.spaceBetweenSections),

                  //Categories

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
