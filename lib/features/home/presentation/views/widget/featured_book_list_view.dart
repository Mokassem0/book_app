
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';
import 'package:flutter_application_1/core/widget/custom_errmessage.dart';
import 'package:flutter_application_1/core/widget/custom_loading_Indicator.dart';
import 'package:flutter_application_1/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
builder: (context, state) {
  if (state is FeaturedBooksSuccess) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
          onTap: (){
               GoRouter.of(context).push(AppRouter.kBookDetails, extra: state.books[index],);
          },
            child: CustomBookImage(
              imgurl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          );
        },
      ),
    );
  } else if (state is FeaturedBooksFailure) {
    return Center(child: CustomErrmessage(errmsg: state.errMessage),);
  } else {
    return CustomLoadingIndicator();
  }
},
    );
  }
}