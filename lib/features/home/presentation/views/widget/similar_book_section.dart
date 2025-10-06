
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';
import 'package:flutter_application_1/features/home/presentation/views/widget/similar_book_list_view.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                Text("You can also like", style: Font.textStyle14.copyWith(fontWeight: FontWeight.w600)),
          SizedBox(height: 16),
          SimilarBookListView(),
      ],
    );
  }
}