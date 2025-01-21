import 'package:bookly_app/Core/utils/constant.dart';
import 'package:bookly_app/Core/utils/app_routes.dart';
import 'package:bookly_app/Core/utils/functions/setup_service_locater.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entitiy.dart';
//import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
//import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntitiyAdapter());
  await Hive.openBox<BookEntitiy>(kFeaturedBox);
  await Hive.openBox<BookEntitiy>(kNewsBox);
  setupServiceLocater();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      routerConfig: AppRoutes.router,
    );
  }
}
