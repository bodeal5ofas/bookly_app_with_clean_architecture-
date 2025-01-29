import 'package:bookly_app/Core/widgets/custom_fiding_widget.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/feature_list_view_iteam.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/featured_image_loading.dart';
import 'package:flutter/material.dart';

class FeatureListViewLoadingIndicator extends StatelessWidget {
  const FeatureListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFidingWidget(child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
          
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>const Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child:FeaturedImageLoading(),
          ),
        ),
      ),
    ),);
  }
}