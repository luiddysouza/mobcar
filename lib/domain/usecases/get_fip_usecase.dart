import 'package:mobcar/domain/entities/fip_entity.dart';
import 'package:mobcar/domain/repository_interfaces/vehicle_repository.dart';

class GetFipUsecase {
  final IVehicleRepository repository;

  const GetFipUsecase({required this.repository});

  Future<FipEntity> call(
    String typeVehicles,
    int idBrand,
    int idModel,
    String yearFuel,
  ) async {
    return await repository.getFip(
      typeVehicles: typeVehicles,
      idBrand: idBrand,
      idModel: idModel,
      yearFuel: yearFuel,
    );
  }
}
