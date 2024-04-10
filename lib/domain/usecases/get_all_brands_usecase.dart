import 'package:mobcar/domain/entities/vehicle_entity.dart';
import 'package:mobcar/domain/repository_interfaces/vehicle_repository.dart';

class GetAllBrandsUsecase {
  final IVehicleRepository repository;

  const GetAllBrandsUsecase({required this.repository});

  Future<List<VehicleEntity>> call(
    String typeVehicles,
  ) async {
    return await repository.getAllBrands(
      typeVehicles: typeVehicles,
    );
  }
}
