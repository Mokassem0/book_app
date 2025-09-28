import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CustomAppBar(),
    Padding(
      padding: const EdgeInsets.only(left: 14),
      child: FeatureBookListView(),
    ),
    SizedBox(height: 60,child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text("Best Seller",
      style: Font.titleMidium,
      ),
    ),),
    BestSellerListViewItem(),
    ]);
  }
}

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

