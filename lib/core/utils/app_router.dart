import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/features/home/data/model/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repo/home_repo_impl.dart';
import 'package:flutter_application_1/features/home/presentation/manager/simeller_books_cubit/simller_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home.dart';
import 'package:flutter_application_1/features/search/presentation/views/search_view.dart';
import 'package:flutter_application_1/features/splash/prsentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: '/searchView', builder: (context, state) => SearchView()),

      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),

      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => SimllerBooksCubit(getIt.get<HomeRepoImpl>(),) ,
          child: BookDetailsView(
            bookModel: state.extra as BookModel
          ),
        ),
      ),
    ],
  );
}
