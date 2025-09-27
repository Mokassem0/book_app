import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}


