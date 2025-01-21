import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_list_view.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search Result',
                style: AppStyles.styleNormal20,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SearchListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
