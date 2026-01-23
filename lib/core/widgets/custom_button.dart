import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textColor, required this.buttonColor, required this.borderRadius});
final String text;
final Color textColor;
final Color buttonColor;
final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          )
        ),
      onPressed: (){},
      child:  Text(text,style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold,color: textColor)),
      ),
    );
  }
}