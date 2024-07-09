import 'package:equatable/equatable.dart';

class AcademicTypeEntity extends Equatable {
  final String typeId;
  final String typeName;
  final String iconUrl;

  const AcademicTypeEntity({
    required this.typeId,
    required this.typeName,
    required this.iconUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [typeId];
}
