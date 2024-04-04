import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CommonSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ConstantSizes.appBarHeight,
    left: ConstantSizes.defaultSpace,
    bottom: ConstantSizes.defaultSpace,
    right: ConstantSizes.defaultSpace,
  );
}