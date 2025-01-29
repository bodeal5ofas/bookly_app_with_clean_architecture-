import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/details/books_action.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/custom_rating.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_iteam.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
    required this.book,
  });
  final BookEntitiy book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: FeatureListViewIteam(
              book: book,
            )),
        const SizedBox(
          height: 5,
        ),
        Text(
          book.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleNormal20,
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          book.author ?? "No Name",
          style: AppStyles.styleSemiBold18.copyWith(
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        CustomRating(
          book: book,
        ),
        const SizedBox(
          height: 20,
        ),
        const BooksAction(),
      ],
    );
  }
}
