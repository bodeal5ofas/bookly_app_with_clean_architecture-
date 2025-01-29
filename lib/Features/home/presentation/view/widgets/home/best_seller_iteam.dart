import 'package:bookly_app/Core/utils/app_routes.dart';
//import 'package:bookly_app/Core/utils/app_styles.dart';
import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/home/best_seller_iteam_body.dart';
import 'package:cached_network_image/cached_network_image.dart';
//import 'package:bookly_app/Features/home/presentation/view/widgets/home/custom_rating.dart';
import 'package:flutter/material.dart';

class BestSellerIteam extends StatelessWidget {
  const BestSellerIteam({super.key, required this.book});
  final BookEntitiy book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRoutes.router.push(AppRoutes.kDetailsRoutes,extra: book);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: CachedNetworkImage(
            imageUrl: book.image ?? "",
            errorWidget: (context, url,error) =>const Icon(Icons.error),
            fit: BoxFit.fill,
          ),
            ),
            const SizedBox(
              width: 20,
            ),
             BestSellerIteamBody(book: book,)
          ],
        ),
      ),
    );
  }
}
