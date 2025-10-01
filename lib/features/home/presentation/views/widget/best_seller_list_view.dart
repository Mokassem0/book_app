
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.all(0),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: BestSellerListViewItem(),
      );
    });
  }
}