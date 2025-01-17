import 'package:bookly_app/Core/utils/app_routes.dart';
import 'package:bookly_app/Core/utils/constant.dart';
import 'package:flutter/material.dart';

class FeatureListViewIteam extends StatelessWidget {
  const FeatureListViewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRoutes.router.push(AppRoutes.kDetailsRoutes);
      },
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            kTestImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
