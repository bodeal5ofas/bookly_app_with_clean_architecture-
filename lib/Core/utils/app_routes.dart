import 'package:bookly_app/Core/utils/functions/setup_service_locater.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_featured_books_use_case.dart';
import 'package:bookly_app/Features/home/domain/use_case/fetch_news_books_use_case.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/detailts_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeRoutes = '/home_view';
  static const kDetailsRoutes = '/details_view';
  static const kSearchRoutes = '/search_view';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
          path: kSearchRoutes, builder: (context, state) => const SearchView()),
      GoRoute(
        path: kHomeRoutes,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(
                FetchFeaturedBooksUseCase(
                  homeRepo: getIt.get<HomeRepoImpl>(),
                ),
              ),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(
                FetchNewsBooksUseCase(
                  getIt.get<HomeRepoImpl>(),
                ),
              ),
            ),
          ],
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kDetailsRoutes,
        builder: (context, state) => const DetailtsView(),
      ),
    ],
  );
}
