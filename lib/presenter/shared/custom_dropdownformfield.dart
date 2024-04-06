// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mobcar/shared/colors.dart';
import 'package:mobcar/presenter/shared/custom_text.dart';

class CustomDropDownFormField extends StatefulWidget {
  final List<DropdownMenuItem<String>> itens;
  final String title;
  const CustomDropDownFormField({
    super.key,
    required this.itens,
    required this.title,
  });

  @override
  State<CustomDropDownFormField> createState() =>
      _CustomDropDownFormFieldState();
}

class _CustomDropDownFormFieldState extends State<CustomDropDownFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: MobCarColors.grey9,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<String>(
          hint: CustomText(
            title: widget.title,
            size: 14,
            color: MobCarColors.grey8,
            fontWeight: FontWeight.normal,
          ),
          value: "",
          items: widget.itens,
          onChanged: (value) {},
          //TODO Validator
        ),
      ),
    );
  }
}
