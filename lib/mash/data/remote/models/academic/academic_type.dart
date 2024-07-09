import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';

class AcademicTypeModel extends AcademicTypeEntity {
  const AcademicTypeModel({
    required super.typeId,
    required super.typeName,
    required super.iconUrl,
  });

  // Factory constructor to create an instance from JSON
  factory AcademicTypeModel.fromJson(Map<String, dynamic> json, String type) {
    if (type == "DL_TYPE") {
      return AcademicTypeModel(
        typeId: json['TYPE_ID'] as String,
        typeName: json['TYPE_NAME'] as String,
        iconUrl: json['ICON_URL'] as String,
      );
    } else {
      return AcademicTypeModel(
        typeId: json['SUB_CAT_ID'] as String,
        typeName: json['SUB_CAT_NAME'] as String,
        iconUrl: json['ICON_URL'] as String,
      );
    }
  }
  factory AcademicTypeModel.fromEntity(AcademicTypeEntity json) {
    return AcademicTypeModel(
      typeId: json.typeId,
      typeName: json.typeName,
      iconUrl: json.iconUrl,
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'TYPE_ID': typeId,
      'TYPE_NAME': typeName,
      'ICON_URL': iconUrl,
    };
  }
}
