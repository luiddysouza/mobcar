import 'package:flutter/material.dart';
import 'package:mobicar/shared/colors.dart';

import 'custom_text.dart';

class CustomTextBox extends StatelessWidget {
  final String title;
  const CustomTextBox({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: CustomText(
        title: title,
        color: MobCarColors.grey8,
        size: 14,
        fontWeight: FontWeight.normal,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
