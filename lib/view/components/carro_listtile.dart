import 'package:flutter/material.dart';
import 'package:mobcar/shared/colors.dart';

import '../../model/carro_model.dart';
import '../newcar_dialog.dart';
import '../viewcar_dialog.dart';
import 'custom_text.dart';

class CarroListTile extends StatelessWidget {
  final Carro carro;

  const CarroListTile({
    super.key,
    required this.carro,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: SizedBox(
                        height: 48,
                        width: 48,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'assets/carro.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: "Modelo",
                          size: 14,
                          color: MobCarColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          title: "Ano",
                          size: 14,
                          color: MobCarColors.grey8,
                          fontWeight: FontWeight.normal,
                        ),
                        CustomText(
                          title: "View More",
                          size: 10,
                          color: MobCarColors.blue6,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ],
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (String result) {
                    switch (result) {
                      case 'view':
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: ViewCarDialog(
                                carro: carro,
                              ),
                            );
                          },
                        );
                        break;
                      case 'edit':
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: NewCarDialog(
                                carro: carro,
                              ),
                            );
                          },
                        );
                        break;
                      case 'delete':
                        //TODO Deletar carro do BD
                        break;
                      default:
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'view',
                      child: Text('View'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'edit',
                      child: Text('Edit'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'delete',
                      child: Text('Delete'),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ViewCarDialog(
                    carro: carro,
                  ),
                );
              },
            ),
          ),
          const Divider(
            color: MobCarColors.primary,
          ),
        ],
      ),
    );
  }
}
