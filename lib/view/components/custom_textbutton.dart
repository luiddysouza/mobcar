import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final Color corBorda;
  final Color corTexto;
  final Color corInterna;
  final double sizeText;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.corBorda,
    required this.corTexto,
    required this.corInterna,
    required this.sizeText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: corBorda,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(corInterna),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          title,
          style: TextStyle(
            color: corTexto,
            fontSize: sizeText,
          ),
        ),
      ),
    );
  }
}
