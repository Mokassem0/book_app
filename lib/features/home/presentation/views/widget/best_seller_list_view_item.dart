import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/features/home/data/model/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/book_rating.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:go_router/go_router.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key, required this.books});
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        GoRouter.of(context).push(AppRouter.kBookDetails, extra: books,);
        
      },
      child: SizedBox(
        height: 125,
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            children: [
              CustomBookImage(
            imgurl: books.volumeInfo.imageLinks?.thumbnail??""),
              SizedBox(width: 30),
              //استخدمنا Expanded مشان ياخد مساحة كاملة
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        books.volumeInfo.title!,
                        style: Font.textStyle20.copyWith(
                          fontFamily: kGTSectraFine,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      books.volumeInfo.authors?[0] ?? "No Name",
                      style: Font.textStyle14.copyWith(color: Colors.white54),
                    ),
                    SizedBox(height: 3),
                    //لو استخدمنا expanded هون بلا فوق ما كان رح يمتد بلعرض كان امتد بلطول
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Font.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        BookRating(
                          rating: (books.volumeInfo.averageRating ?? 0).toInt(),
                          count: books.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
