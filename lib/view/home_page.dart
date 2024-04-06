import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobcar/shared/colors.dart';
import 'package:mobcar/view/components/custom_textbutton.dart';

import '../model/carro_model.dart';
import '../shared/icons.dart';
import 'newcar_dialog.dart';
import 'components/carro_listtile.dart';
import 'components/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MobCarColors.primary,
        iconTheme: const IconThemeData(
          color: MobCarColors.blue6,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(CustomIcons.mobcar),
        ),
      ),
      endDrawer: const CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Carros Disponíveis",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                  ),
                ),
                CustomTextButton(
                  onPressed: () => showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: NewCarDialog(
                          carro: Carro(),
                        ),
                      );
                    },
                  ),
                  title: "Add Carro",
                  sizeText: 12,
                  corBorda: MobCarColors.primary,
                  corTexto: MobCarColors.background,
                  corInterna: MobCarColors.primary,
                )
              ],
            ),
          ),
          //TODO busca local dos itens
          Container(
            height: 20,
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: const TextField(),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return CarroListTile(
                  carro: Carro(),
                );
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: MobCarColors.primary,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.copyright, color: MobCarColors.blue6),
                Text(
                  "2022. All rights reserved to MobCar.",
                  style: TextStyle(color: MobCarColors.blue6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
