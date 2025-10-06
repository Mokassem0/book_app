
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/book_action.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/book_rating.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_book_image.dart';

class BookDetaisSection extends StatelessWidget {
  const BookDetaisSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width *0.2),
            child: CustomBookImage(),
          ),
          SizedBox(height: 43),
          Text(
            'The Jungle Book',
            style: Font.textStyle30),
          SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Font.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 16),
          BookRating(mainAxisAlignment: MainAxisAlignment.center,),
          SizedBox(height: 37),
          BookAction(),
      ],
    );
  }
}