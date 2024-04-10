import 'package:mobcar/domain/entities/fip_entity.dart';
import 'package:mobcar/domain/entities/vehicle_entity.dart';

abstract interface class IVehicleRepository {
  Future<List<VehicleEntity>> getAllBrands({
    String typeVehicles,
  });

  Future<List<VehicleEntity>> getAllModels({
    String typeVehicles,
    int idBrand,
  });
  Future<List<VehicleEntity>> getAllYears({
    String typeVehicles,
    int idBrand,
    int idModel,
  });
  Future<FipEntity> getFip({
    String typeVehicles,
    int idBrand,
    int idModel,
    String yearFuel,
  });
}
