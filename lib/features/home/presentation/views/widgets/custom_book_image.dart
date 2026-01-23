import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: SizedBox(
        height: 200,
        width: 150,
        child: Image(image:AssetImage('assets/images/test_image.png') )),
    );
  }
}