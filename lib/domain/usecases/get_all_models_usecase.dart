import 'package:mobcar/domain/entities/vehicle_entity.dart';
import 'package:mobcar/domain/repository_interfaces/vehicle_repository.dart';

class GetAllModelsUsecase {
  final IVehicleRepository repository;

  const GetAllModelsUsecase({required this.repository});

  Future<List<VehicleEntity>> call(
    String typeVehicles,
    int idBrand,
  ) async {
    return await repository.getAllModels(
      typeVehicles: typeVehicles,
      idBrand: idBrand,
    );
  }
}
