import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_iteam.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container() // FeatureListViewIteam(),
          ),
    );
  }
}
