
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            AspectRatio(aspectRatio: 2.5/4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsImg.test))
              ),
            ),
            ),
            SizedBox(width: 30,),
            //استخدمنا Expanded مشان ياخد مساحة كاملة
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Text("Harry Potter and the Goblet of Fire",style: Font.textStyle20.copyWith(fontFamily: kGTSectraFine),maxLines: 2)),
                  SizedBox(height: 3,),
                  Text("J.K. Rowling",style: Font.textStyle14.copyWith(color: Colors.white54),),
                  SizedBox(height: 3,),
                  //لو استخدمنا expanded هون بلا فوق ما كان رح يمتد بلعرض كان امتد بلطول
                  Row(
                    children: [
                      Text("19.99\$",style: Font.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      Spacer(),
                      BookRating()
                      
                    ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



