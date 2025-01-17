import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_iteam.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 10.0, right: 20, left: 20),
          child: BestSellerIteam(),
        ),
      ),
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
    );
  }
}
