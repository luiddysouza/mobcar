import 'package:mobcar/domain/entities/vehicle_entity.dart';

class VehicleMapper {
  static VehicleEntity fromMap(Map<String, dynamic> map) {
    return VehicleEntity(
      id: map['codigo'],
      name: map['nome'],
    );
  }

  static Map<String, dynamic> toMap(VehicleEntity vehicle) {
    return {
      'codigo': vehicle.id,
      'nome': vehicle.name,
    };
  }

  // factory VehicleEntity validFakeEntity => VehicleEntity.fakeEntity;

  // static List<VehicleEntity> validListFakeEntity (int length) {
  //   List.generate(length, (index) => VehicleEntity.fakeEntity,);
  // }
}
