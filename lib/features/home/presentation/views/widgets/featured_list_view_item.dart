import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 150,
      child: Image(image:AssetImage('assets/images/test_image.png') ));
  }
}