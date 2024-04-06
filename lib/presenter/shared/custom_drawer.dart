import 'package:flutter/material.dart';
import 'package:mobcar/shared/colors.dart';

import 'custom_text_button_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Drawer(
          backgroundColor: MobCarColors.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CustomTextButton(
                title: "HomePage",
                sizeText: 18,
                corBorda: Colors.transparent,
                corInterna: Colors.transparent,
                corTexto: MobCarColors.background,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/homepage');
                },
              ),
              CustomTextButton(
                title: "Menu Item 2",
                sizeText: 18,
                corBorda: Colors.transparent,
                corInterna: Colors.transparent,
                corTexto: MobCarColors.background,
                onPressed: () {},
              ),
              CustomTextButton(
                title: "Menu Item 3",
                sizeText: 18,
                corBorda: Colors.transparent,
                corInterna: Colors.transparent,
                corTexto: MobCarColors.background,
                onPressed: () {},
              ),
              CustomTextButton(
                title: "Menu Item 4",
                sizeText: 18,
                corBorda: Colors.transparent,
                corInterna: Colors.transparent,
                corTexto: MobCarColors.background,
                onPressed: () {},
              ),
              CustomTextButton(
                title: "Menu Item 5",
                sizeText: 18,
                corBorda: Colors.transparent,
                corInterna: Colors.transparent,
                corTexto: MobCarColors.background,
                onPressed: () {},
              ),
              CustomTextButton(
                title: "Menu Item 6",
                sizeText: 18,
                corBorda: Colors.transparent,
                corInterna: Colors.transparent,
                corTexto: MobCarColors.background,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
