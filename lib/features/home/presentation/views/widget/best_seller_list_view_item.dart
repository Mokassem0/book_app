
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/core/utils/font.dart';

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
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Text("Harry Potter and the Goblet of Fire",style: Font.textStyle20,maxLines: 2))
              ],
            )
          ],
        ),
      ),
    );
  }
}