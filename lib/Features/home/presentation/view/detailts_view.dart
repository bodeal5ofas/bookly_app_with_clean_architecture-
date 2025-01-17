import 'package:bookly_app/Features/home/presentation/view/widgets/details/custom_details_appbar.dart';
import 'package:flutter/material.dart';

class DetailtsView extends StatelessWidget {
  const DetailtsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomDetailsAppBar(),
          ],
        ),
      ),
    );
  }
}
