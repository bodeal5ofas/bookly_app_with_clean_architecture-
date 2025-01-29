import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_iteam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListView extends StatefulWidget {
  const FeatureListView({super.key, required this.books});
  final List<BookEntitiy> books;

  @override
  State<FeatureListView> createState() => _FeatureListViewState();
}

class _FeatureListViewState extends State<FeatureListView> {
  late ScrollController scrollController;
  int pageNumber = 1;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() async {
    if (scrollController.position.pixels >=
        0.7 * scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        isLoading = true;
      await  BlocProvider.of<FeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNum: pageNumber++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
          controller: scrollController,
          itemCount: widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: FeatureListViewIteam(
              book: widget.books[index],
            ),
          ),
        ),
      ),
    );
  }
}
