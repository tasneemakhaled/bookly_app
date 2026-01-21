import 'package:bookly_app/core/utils/asssets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image:AssetImage(AssetsData.logo),height: 24, ),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass,size: 28,))
        ],
      ),
    );
  }
}