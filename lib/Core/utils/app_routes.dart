import 'package:bookly_app/Features/home/presentation/view/detailts_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeRoutes = '/home_view';
    static const kDetailsRoutes = '/details_view';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeRoutes,builder: (context, state) =>const HomeView(),),
      GoRoute(path: kDetailsRoutes,builder: (context, state) =>const DetailtsView(),),
    ],
  );
}
