import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/core/widget/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: "19.99€",
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), topLeft: Radius.circular(16)), 
              textStyle: Font.textStyle18,
              
            ),
          ),
           Expanded(
            child: CustomButton(
              backgroundColor: Color(0xFFEF8262),
              textColor: Colors.white,
              text: "Free preview",
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(16), topRight: Radius.circular(16)),
               textStyle: Font.textStyle16,
              
            ),
          ),
        ],
      ),
    );
  }
}