
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_book_image.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomBookImage();
        },
      ),
    );
  }
}