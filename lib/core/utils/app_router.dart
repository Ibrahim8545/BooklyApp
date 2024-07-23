import 'package:booklyapp/features/home/presetation/views/book_details_view.dart';
import 'package:booklyapp/features/home/presetation/views/home_view.dart';
import 'package:booklyapp/features/search/presentation/views/search_view.dart';
import 'package:booklyapp/features/splash/pressntation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
   static const kBookDetailsView='/bookDetailsView';
   static const kSearchView='/searchView';
  static final router = GoRouter(
   
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>const SplashView(),
      ),

      GoRoute(
        path: '/homeview',
        builder: (context, state) =>const  HomeView(),
      ),

      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>const  BookDetailsView(),
      ),
      GoRoute(
        path:kSearchView,
        builder: (context, state) =>const SearchView(),
      ),
    ],
  );
}
