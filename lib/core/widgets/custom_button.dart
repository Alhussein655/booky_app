import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      required this.backColor,
      required this.textColor,this.fSize,this.onPressed});
  final Color backColor;
  final Color textColor;
  final String text;
  final double? fSize;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              )),
          onPressed:onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor,fontSize: fSize??14),
          )),
    );
  }
}
