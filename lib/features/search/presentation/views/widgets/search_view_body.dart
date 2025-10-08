import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
