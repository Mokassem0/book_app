import 'package:flutter_application_1/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home.dart';
import 'package:flutter_application_1/features/splash/prsentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
   static const kBookDetails = '/bookDetailsView';
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

     GoRoute(
      path: kBookDetails,
      builder: (context, state) => BookDetailsView(),
    ),
  ],
);
}