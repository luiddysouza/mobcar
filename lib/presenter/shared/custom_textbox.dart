import 'package:flutter/material.dart';
import 'package:mobcar/shared/colors.dart';

import 'custom_text.dart';

class CustomTextBox extends StatelessWidget {
  final String title;
  const CustomTextBox({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CustomText(
        title: title,
        color: MobCarColors.grey8,
        size: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
