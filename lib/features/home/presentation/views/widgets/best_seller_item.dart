import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 200,
          width: 120,
          child: Image(image: AssetImage(AssetsData.testImage))),
        Column(
          children: [

          ],
        )
      ],
    );
  }
}