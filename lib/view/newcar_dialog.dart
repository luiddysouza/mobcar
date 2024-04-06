import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

import '../model/carro_model.dart';
import '../shared/colors.dart';
import '../shared/icons.dart';
import 'components/custom_dropdownformfield.dart';
import 'components/custom_text.dart';
import 'components/custom_textbox.dart';
import 'components/custom_textbutton.dart';

class NewCarDialog extends StatefulWidget {
  final Carro carro;
  const NewCarDialog({
    super.key,
    required this.carro,
  });

  @override
  State<NewCarDialog> createState() => _NewCarDialogState();
}

class _NewCarDialogState extends State<NewCarDialog> {
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
                      title: "Adicionar Carro",
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
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: CustomDropDownFormField(
                    itens: [],
                    title: "Marca",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: CustomDropDownFormField(
                    itens: [],
                    title: "Modelo",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CustomDropDownFormField(
                    itens: [],
                    title: "Ano",
                  ),
                ),
                const CustomTextBox(title: "Valor (R\$)"),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTextButton(
                        title: "Cancelar",
                        sizeText: 12,
                        corBorda: MobCarColors.primary,
                        corInterna: MobCarColors.background,
                        corTexto: MobCarColors.primary,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 10),
                      CustomTextButton(
                        title: "Salvar",
                        sizeText: 12,
                        corBorda: MobCarColors.background,
                        corInterna: MobCarColors.primary,
                        corTexto: MobCarColors.background,
                        onPressed: () {
                          //TODO salvar carro
                        },
                      ),
                    ],
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
