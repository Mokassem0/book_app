import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2.7/4,
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsImg.test))
      ),
    ),
    );
  }
}