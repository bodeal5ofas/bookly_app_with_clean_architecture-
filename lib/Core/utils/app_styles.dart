import 'package:bookly_app/Core/utils/constant.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const styleNormal20 = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w400, fontFamily: kGtSectraFine);
  static const styleNormal30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontFamily: kGtSectraFine,
  );
  static const styleNormal14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const styleMedium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
