import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/custom_rating.dart';
import 'package:flutter/material.dart';

class BestSellerIteamBody extends StatelessWidget {
  const BestSellerIteamBody({
    super.key,
    required this.book,
  });
  final BookEntitiy book;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            book.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleNormal20.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            book.author ?? "No Name",
            style: AppStyles.styleNormal14.copyWith(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${book.price}\$',
                style: AppStyles.styleNormal20
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              CustomRating(
                book: book,
              )
            ],
          ),
        ],
      ),
    );
  }
}
