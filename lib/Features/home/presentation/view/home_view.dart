import 'package:bookly_app/Core/utils/app_styles.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_iteam.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_list_view_bloc_builder.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_bloc_builder.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_iteam.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  HomeAppBar(),
                  SizedBox(
                    height: 30,
                  ),
                  FeatureListViewBlocBuilder(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Best Seller',
                      style: AppStyles.styleSemiBold18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: BestSellerListViewBlocBuilder(),
            )
          ],
        ),
      ),
    );
  }
}
