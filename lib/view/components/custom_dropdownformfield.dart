// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mobicar/shared/colors.dart';
import 'package:mobicar/view/components/custom_text.dart';

class CustomDropDownFormField extends StatefulWidget {
  final List<DropdownMenuItem<String>> itens;
  final String title;
  const CustomDropDownFormField(
      {Key? key, required this.itens, required this.title})
      : super(key: key);

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
