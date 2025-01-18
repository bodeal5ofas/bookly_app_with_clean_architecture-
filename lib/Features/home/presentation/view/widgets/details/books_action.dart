import 'package:bookly_app/Features/home/presentation/view/widgets/details/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              isPrice: true,
              title: '\$ 199.99',
            ),
          ),
          Expanded(
            child: CustomButton(
              isPrice: false,
              title: "Free Preview",
            ),
          ),
        ],
      ),
    );
  }
}
