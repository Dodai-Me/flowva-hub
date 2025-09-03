import 'package:flowva_hub/constants.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //For the buttons in the first card of the FirstPage

  const Button({
    super.key,
    required this.containerColor,
    required this.textColor,
    required this.text,
  });

  final Color containerColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 98.33,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Center(
          child: Text(
            text,
            style: kTextStyle.copyWith(
              color: textColor,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
