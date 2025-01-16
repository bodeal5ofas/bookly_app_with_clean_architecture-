import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text('4.8'),
        Text(
          '(2359)',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
