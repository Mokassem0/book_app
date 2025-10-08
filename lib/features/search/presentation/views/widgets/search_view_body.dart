import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter_application_1/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter_application_1/features/search/presentation/views/widgets/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Search Result", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
          SizedBox(height: 16,),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SearchResultListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
