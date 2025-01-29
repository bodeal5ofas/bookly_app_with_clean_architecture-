import 'dart:developer';

import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_iteam.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key, required this.books});
  final List<BookEntitiy> books;

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  late ScrollController _scrollController;
  bool isLoading = false;
  int nextPage = 1;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  _scrollListener() async {
    log(_scrollController.position.pixels.toString());
    log(_scrollController.position.maxScrollExtent.toString());
    if (_scrollController.position.pixels >=
     0.7 *   _scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<NewestBooksCubit>(context)
            .fetchNewestBooks(pageNum: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // delegate: SliverChildBuilderDelegate(
      // childCount:
      controller: _scrollController,
      itemCount: widget.books.length,
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0, right: 20, left: 20),
        child: BestSellerIteam(
          book: widget.books[index],
        ),
      ),
    );
    // hasScrollBody: false,
    // fillOverscroll: true,
    // child: Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //   child: SliverChildBuilderDelegate(
    //     //shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: 10,
    //     itemBuilder: (context, index) => const Padding(
    //       padding: EdgeInsets.only(bottom: 10.0),
    //       child: BestSellerIteam(),
    //     ),
  }
}
