import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.height = 50,
    this.minWidth = double.infinity,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.radius = 15,
    this.text = '',
    this.elevation = 0,
    this.borderSide = BorderSide.none,
  });

  final void Function()? onPressed;
  final double height;
  final double minWidth;
  final Color buttonColor;
  final Color textColor;
  final double radius;
  final String text;
  final double elevation;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: height,
      minWidth: minWidth,
      color: buttonColor,
      elevation: elevation,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: borderSide,
      ),
      child: Text(text, style: TextStyle(
        color: textColor,
      ),),
    );
  }
}
