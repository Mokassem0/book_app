import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';

class CustomErrmessage extends StatelessWidget {
  const CustomErrmessage({super.key, required this.errmsg});

  final String errmsg;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text (errmsg,style: Font.textStyle18,));
  }
}
