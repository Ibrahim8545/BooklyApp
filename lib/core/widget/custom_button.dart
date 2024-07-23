import 'package:booklyapp/core/utils/systles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      
      this.borderRadius,  this.fontSize}
      );
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18
                .copyWith(color:textColor, 
                fontWeight: FontWeight.w900,
                fontSize: fontSize
                ),
          )),
    );
  }
}
