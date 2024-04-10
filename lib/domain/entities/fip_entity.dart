import 'package:equatable/equatable.dart';

class FipEntity extends Equatable {
  final int type;
  final String value;
  final String brand;
  final String model;
  final int modelYear;
  final String fuel;
  final String idFip;
  final String referenceMonth;
  final String fuelAcronym;

  const FipEntity({
    required this.type,
    required this.value,
    required this.brand,
    required this.model,
    required this.modelYear,
    required this.fuel,
    required this.idFip,
    required this.referenceMonth,
    required this.fuelAcronym,
  });

  FipEntity copyWith({
    int? type,
    String? value,
    String? brand,
    String? model,
    int? modelYear,
    String? fuel,
    String? idFip,
    String? referenceMonth,
    String? fuelAcronym,
  }) {
    return FipEntity(
      type: type ?? this.type,
      value: value ?? this.value,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      modelYear: modelYear ?? this.modelYear,
      fuel: fuel ?? this.fuel,
      idFip: idFip ?? this.idFip,
      referenceMonth: referenceMonth ?? this.referenceMonth,
      fuelAcronym: fuelAcronym ?? this.fuelAcronym,
    );
  }

  @override
  String toString() {
    return 'FipEntity(type: $type, value: $value, brand: $brand, model: $model, modelYear: $modelYear, fuel: $fuel, idFip: $idFip, referenceMonth: $referenceMonth, fuelAcronym: $fuelAcronym)';
  }

  @override
  List<Object> get props {
    return [
      type,
      value,
      brand,
      model,
      modelYear,
      fuel,
      idFip,
      referenceMonth,
      fuelAcronym,
    ];
  }
}
