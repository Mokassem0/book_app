import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/core/utils/function/custom_lunch_url.dart';
import 'package:flutter_application_1/core/widget/custom_button.dart';
import 'package:flutter_application_1/features/home/data/model/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.books});
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: "Free",
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              textStyle: Font.textStyle18,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                openCustomLunchURL(context, books.volumeInfo.previewLink ?? '');
              },
              backgroundColor: Color(0xFFEF8262),
              textColor: Colors.white,
              text: getText(books),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              textStyle: Font.textStyle16,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel books) {
    if (books.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
