import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/splash/prsentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody()
    );
  }
}