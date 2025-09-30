
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
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
          ],
        ),
      ),
    );
  }
}