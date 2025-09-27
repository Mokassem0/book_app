import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: AspectRatio(aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsImg.test))
        ),
      ),
      ),
    );
  }
}