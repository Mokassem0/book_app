import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/data/model/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presentation/manager/simeller_books_cubit/simller_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimllerBooksCubit>(context).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories?[0] ?? 'programming');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsViewBody(
      bookModel: widget.bookModel,

    )));
  }
}
