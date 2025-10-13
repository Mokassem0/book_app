import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imgurl}) : super(key: key);
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CachedNetworkImage(
            imageUrl: imgurl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
            
        ),
      ),
    );
  }
}
