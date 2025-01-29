import 'package:bookly_app/Core/utils/functions/custom_show_snack_bar.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_iteam.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewBlocBuilder extends StatefulWidget {
  const BestSellerListViewBlocBuilder({
    super.key,
  });

  @override
  State<BestSellerListViewBlocBuilder> createState() =>
      _BestSellerListViewBlocBuilderState();
}

class _BestSellerListViewBlocBuilderState
    extends State<BestSellerListViewBlocBuilder> {
  List<BookEntitiy> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {
        if (state is NewestBooksSuccess) {
          books.addAll(state.books);
        } else if (state is NewestBooksPaggingFailure) {
          customShowSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is NewestBooksSuccess ||
            state is NewestBooksPaggingFailure ||
            state is NewestBooksPaggingLoading) {
          return BestSellerListView(books: books);
          //       return ListView.builder(
          //   itemCount:books.length,
          //     shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemBuilder: (context, index) => Padding(
          //     padding: const EdgeInsets.only(bottom: 10.0, right: 20, left: 20),
          //     child: BestSellerIteam(
          //       book:books[index],
          //     ),
          //   ),
          // );
        } else if (state is NewestBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
