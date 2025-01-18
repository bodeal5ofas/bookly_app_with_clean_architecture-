import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/details/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarSection extends StatelessWidget {
  const SimilarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                "You can also like",
                style: AppStyles.styleSemiBold18,
              ),
            ),
          ),
          Expanded(child: SimilarBooksListView()),
        ],
      ),
    );
  }
}
