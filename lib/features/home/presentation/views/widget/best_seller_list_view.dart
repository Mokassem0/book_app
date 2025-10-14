import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/custom_errmessage.dart';
import 'package:flutter_application_1/core/widget/custom_loading_Indicator.dart';
import 'package:flutter_application_1/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookItemListView(
                  books: state.books[index],
                ),
              ),
              childCount: state.books.length,
            ),
          );
        } else if (state is NewsetBooksFailure) {
          return SliverToBoxAdapter(child: CustomErrmessage(errmsg: state.errMessage));
        } else {
          return SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
