import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.isPrice, required this.title});
  final bool isPrice;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: isPrice ? Colors.white : const Color(0xffEF8262),
        borderRadius: isPrice
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              )
            : const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
      ),
      child: Center(
          child: Text(
        title,
        style: AppStyles.styleSemiBold18
            .copyWith(color: isPrice ? Colors.black : null),
      )),
    );
  }
}
