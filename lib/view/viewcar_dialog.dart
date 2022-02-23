import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../model/carro_model.dart';
import '../shared/colors.dart';
import '../shared/icons.dart';
import 'components/custom_text.dart';
import 'components/custom_textbutton.dart';

class ViewCarDialog extends StatefulWidget {
  final Carro carro;
  const ViewCarDialog({Key? key, required this.carro}) : super(key: key);

  @override
  State<ViewCarDialog> createState() => _ViewCarDialogState();
}

class _ViewCarDialogState extends State<ViewCarDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    SvgPicture.asset(CustomIcons.car),
                    const SizedBox(width: 10),
                    const CustomText(
                      title: "Visualizar Carro",
                      size: 14,
                      color: MobCarColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                IconButton(
                  icon: SvgPicture.asset(CustomIcons.x),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'assets/carro.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RatingBar.builder(
                      itemSize: 25,
                      unratedColor: MobCarColors.grey2,
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: MobCarColors.yellow6,
                      ),
                      onRatingUpdate: (rating) {
                        // ignore: avoid_print
                        print(rating);
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Marca",
                    style: TextStyle(
                      color: MobCarColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Ano",
                    style: TextStyle(
                      color: MobCarColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Modelo",
                    style: TextStyle(
                      color: MobCarColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Valor",
                    style: TextStyle(
                      color: MobCarColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextButton(
                    onPressed: () {
                      //TODO salvar como reservado
                    },
                    title: "Reservar",
                    sizeText: 12,
                    corBorda: MobCarColors.primary,
                    corTexto: MobCarColors.background,
                    corInterna: MobCarColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
