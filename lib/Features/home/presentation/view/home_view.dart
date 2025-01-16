import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_iteam.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/feature_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/feature_list_view_iteam.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            HomeAppBar(),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: FeatureListView(),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Best Seller'),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
