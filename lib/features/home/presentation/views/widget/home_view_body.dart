import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(),
        ),
        SliverToBoxAdapter(
          child:  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Padding(
      padding: const EdgeInsets.only(left: 14),
      child: FeatureBookListView(),
    ),
    SizedBox(height: 51,),
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text("Best Seller",
      style: Font.textStyle18,
      
    ),),
    ]),
          
        ),
        SizedBox(height: 20),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );

  }
}




