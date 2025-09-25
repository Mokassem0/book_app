import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsImg.logo ,),
      const SizedBox(height: 16,),
      Text("Read Free Books",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        fontFamily: 'Golos',
        fontSize: 20,
        color: Colors.white
      ))
      ],
    );
  }
}
