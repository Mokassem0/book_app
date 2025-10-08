import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 40, bottom: 20),
      child: Row(
        children: [
          Image.asset('assets/img/Logo.png', height: 18),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ],
      ),
    );
  }
}
