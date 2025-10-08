
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookItemListView(),
        ),
      childCount: 10,
      ));
  }
}
