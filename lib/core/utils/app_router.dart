import 'package:booklyapp/features/home/presetation/views/home_view.dart';
import 'package:booklyapp/features/splash/pressntation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
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
    ],
  );
}
