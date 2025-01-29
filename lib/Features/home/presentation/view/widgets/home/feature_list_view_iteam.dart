import 'package:bookly_app/Core/utils/app_routes.dart';
import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatureListViewIteam extends StatelessWidget {
  const FeatureListViewIteam({super.key, required this.book});
  final BookEntitiy book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRoutes.router.push(AppRoutes.kDetailsRoutes,extra: book);
      },
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          // child: Image.network(
          //   book.image ?? '',
          //   fit: BoxFit.fill,
          // ),
          child: CachedNetworkImage(
            imageUrl: book.image ?? "",
          //  placeholder: (context, url) =>const Center(child:  CircularProgressIndicator()),
            errorWidget: (context, url, error) =>const Icon(Icons.error),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
