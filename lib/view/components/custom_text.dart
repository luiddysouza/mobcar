import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String title;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  const CustomText(
      {super.key,
      required this.title,
      required this.size,
      required this.color,
      required this.fontWeight});

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
        color: widget.color,
        fontSize: widget.size,
        fontFamily: 'Helvetica',
        fontWeight: widget.fontWeight,
      ),
    );
  }
}
