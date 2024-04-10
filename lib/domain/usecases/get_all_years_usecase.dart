import 'package:mobcar/domain/entities/vehicle_entity.dart';
import 'package:mobcar/domain/repository_interfaces/vehicle_repository.dart';

class GetAllYearsUsecase {
  final IVehicleRepository repository;

  const GetAllYearsUsecase({required this.repository});

  Future<List<VehicleEntity>> call(
    String typeVehicles,
    int idBrand,
    int idModel,
  ) async {
    return await repository.getAllYears(
      typeVehicles: typeVehicles,
      idBrand: idBrand,
      idModel: idModel,
    );
  }
}
