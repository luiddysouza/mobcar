import 'package:mobcar/domain/entities/fip_entity.dart';

class FipMapper {
  static FipEntity fromMap(Map<String, dynamic> map) {
    return FipEntity(
      type: map['TipoVeiculo'],
      value: map['Valor'],
      brand: map['Marca'],
      model: map['Modelo'],
      modelYear: map['AnoModelo'],
      fuel: map['Combustivel'],
      idFip: map['CodigoFipe'],
      referenceMonth: map['MesReferencia'],
      fuelAcronym: map['SiglaCombustivel'],
    );
  }

  static Map<String, dynamic> toMap(FipEntity fip) {
    return {
      'TipoVeiculo': fip.type,
      'Valor': fip.value,
      'Marca': fip.brand,
      'Modelo': fip.model,
      'AnoModelo': fip.modelYear,
      'Combustivel': fip.fuel,
      'CodigoFipe': fip.idFip,
      'MesReferencia': fip.referenceMonth,
      'SiglaCombustivel': fip.fuelAcronym,
    };
  }

  // factory Fip validFakeEntity => Fip.fakeEntity;

  // static List<Fip> validListFakeEntity (int length) {
  //   List.generate(length, (index) => Fip.fakeEntity,);
  // }
}
