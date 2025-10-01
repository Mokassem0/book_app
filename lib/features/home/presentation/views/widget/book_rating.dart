
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),),
        SizedBox(width: 6.3,),
        Text("4.8",style: Font.textStyle14,),
        SizedBox(width: 5,),
        Text("(2640)",style: Font.textStyle14.copyWith(color: Colors.white54),),
      ],
    );
  }
}