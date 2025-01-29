import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key, required this.book,
  });
  final BookEntitiy book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
           '4.8',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text('(${book.rating})',
            style: AppStyles.styleNormal14.copyWith(
              color: Colors.white.withOpacity(0.5),
            ))
      ],
    );
  }
}
