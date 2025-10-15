import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/model/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/book_details_section.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/similar_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          CustomBookDetailsAppBar(),
          SizedBox(height: 20,),
          BookDetaisSection(
            bookModel: bookModel,
          ),
          Expanded(child: SizedBox(height: 50)),
         SimilarBookSection(), 
          SizedBox(height: 40),
        ]),
      ) ,)
      ],
    );
  }
}



