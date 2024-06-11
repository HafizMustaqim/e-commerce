import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: const CustomAppBar(showBackArrow: true, title: Text('Reviews & Ratings')),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings & Reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              //Overall Product Ratings
              const OverallProductRating(),
              const CustomRatingBarIndicator(rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              //User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


