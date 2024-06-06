import "package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart";
import "package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            ProductImageSlider(),

            //Product Details
            Padding(
              padding: EdgeInsets.only(right: ConstantSizes.defaultSpace, left: ConstantSizes.defaultSpace, bottom: ConstantSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating & Share
                  RatingAndShare(),

                  //Price, Title, Stock & Brand
                  //Attributes
                  //Checkout Button
                  //Description
                  //Reviews
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}