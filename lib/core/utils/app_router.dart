import 'package:booky/features/home/presentation/views/book_detailes.dart';
import 'package:booky/features/home/presentation/views/home_view.dart';
import 'package:booky/features/search/presentation/views/search_view.dart';
import 'package:booky/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeViewPath='/homeView';
  static const kBookDetailsViewPath='/bookDetailsView';
  static const kSearchViewPath='/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: kSearchViewPath,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}