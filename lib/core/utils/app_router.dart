import 'package:flutter_application_1/features/home/presentation/views/home.dart';
import 'package:flutter_application_1/features/splash/prsentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),

     GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
  ],
);
}