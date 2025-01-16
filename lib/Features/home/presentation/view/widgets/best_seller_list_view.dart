import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_iteam.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,itemBuilder: (context, index) =>const BestSellerIteam(),);
  }
}