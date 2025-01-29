import 'package:flutter/material.dart';

class FeaturedImageLoading extends StatelessWidget {
  const FeaturedImageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
        aspectRatio: 2 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          // child: Image.network(
          //   book.image ?? '',
          //   fit: BoxFit.fill,
          // ),
          child:Container(
            color: Colors.grey,
          ),
        ),
      );
  }
}