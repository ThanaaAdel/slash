import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font20BoldWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font20BoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font30White700 = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 30.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font16MainColor400 = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font24Gray400 = TextStyle(
      color: ColorsManager.grey,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font24White600 = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14White400 = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font16White600 = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font14MediumWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font14MediumGray = TextStyle(
      color: ColorsManager.grey,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font18SemiBoldPurple = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font12RegularPurple = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font12BlackBold = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font18SemiBoldWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font14MediumLightBlack = TextStyle(
      color: ColorsManager.mainBlack.withOpacity(0.5),
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font16SemiBoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font16SemiBoldPurple = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font24SemiBoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.semiBold);
}
