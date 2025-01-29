//import 'package:bookly_app/Core/utils/app_styles.dart';
//import 'package:bookly_app/Core/utils/constant.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/details/books_action.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/details/books_details_section.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/details/custom_button.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/details/custom_details_appbar.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/details/similar_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/details/similar_section.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/custom_rating.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_iteam.dart';
import 'package:flutter/material.dart';

class DetailtsView extends StatelessWidget {
  const DetailtsView({super.key, required this.book});
  final BookEntitiy book;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
           const CustomDetailsAppBar(),
            BooksDetailsSection(book: book,),
           const SimilarSection(),
          ],
        ),
      ),
    );
  }
}
