import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: HomeViewBody()
    );
  }
}