import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: SizedBox(
          height: 200,
          width: 150,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) {
              return Icon(Icons.error);
            },
            placeholder: (context, url) {
             return  Center(child: CircularProgressIndicator(),);
            },
            fit: BoxFit.fill,
            imageUrl: imageUrl,)
        ),
      ),
    );
  }
}
