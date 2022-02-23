import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final Color corBorda;
  final Color corTexto;
  final Color corInterna;
  final double sizeText;
  const CustomTextButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.corBorda,
      required this.corTexto,
      required this.corInterna,
      required this.sizeText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
    );
  }
}
