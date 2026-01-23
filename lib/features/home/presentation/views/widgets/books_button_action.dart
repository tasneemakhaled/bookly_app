import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksButtonAction extends StatelessWidget {
  const BooksButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(text: '19.99 €',textColor: Colors.black,buttonColor: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),),
        CustomButton(text: 'Free Preview',textColor: Colors.white,buttonColor: Color(0xffEF8262),borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),),
      ],
    );
  }
}