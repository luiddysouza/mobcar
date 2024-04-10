import 'package:equatable/equatable.dart';

class VehicleEntity extends Equatable {
  final int id;
  final String name;

  const VehicleEntity({
    required this.id,
    required this.name,
  });

  VehicleEntity copyWith({
    int? id,
    String? name,
  }) {
    return VehicleEntity(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  String toString() => 'VehicleEntity(id: $id, name: $name)';

  @override
  List<Object> get props => [
        id,
        name,
      ];
}
