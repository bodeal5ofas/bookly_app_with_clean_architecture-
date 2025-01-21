import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_iteam.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: BestSellerIteam(),
      ),
    );
  }
}
