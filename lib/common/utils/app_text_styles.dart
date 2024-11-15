import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const h1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.title,
  );
  static const h2Light = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );
  static const title = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: AppColors.title,
  );
  static const subTitle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static const labelTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.greyDark,
  );
  static const hintTextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.grey,
  );
  static const caption1 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.greyDark,
  );
  static const button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
}
