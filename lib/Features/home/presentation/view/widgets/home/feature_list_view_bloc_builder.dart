import 'package:bookly_app/Core/utils/functions/custom_show_snack_bar.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_Loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListViewBlocBuilder extends StatefulWidget {
  const FeatureListViewBlocBuilder({
    super.key,
  });

  @override
  State<FeatureListViewBlocBuilder> createState() =>
      _FeatureListViewBlocBuilderState();
}

class _FeatureListViewBlocBuilderState
    extends State<FeatureListViewBlocBuilder> {
  List<BookEntitiy> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        } else if (state is FeaturedBooksPagintionFailure) {
          customShowSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
 
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPagintionLoading ||
            state is FeaturedBooksPagintionFailure) {
          return FeatureListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(
            child: FeatureListViewLoadingIndicator(),
          );
        }
      },
    );
  }
}
