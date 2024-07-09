import 'package:mash/mash/domain/entities/facilities/facility_sub_un_sub_entity.dart';

class FacilitySubUnSubModel extends FacilitySubUnSubEntity {
  const FacilitySubUnSubModel({
    required String? statusCode,
    required String? statusMessage,
    required List<ResTable>? resTable,
  }) : super(
    statusCode: statusCode,
    statusMessage: statusMessage,
    resTable: resTable,
  );

  factory FacilitySubUnSubModel.fromJson(Map<String, dynamic> json) {
    return FacilitySubUnSubModel(
      statusCode: json['statusCode'].toString(),
      statusMessage: json['statusMessage'].toString(),
      resTable: (json['resTable'] as List<dynamic>?)
          ?.map((item) => ResTable.fromJson(item as Map<String, dynamic>))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'statusMessage': statusMessage,
      'resTable': resTable?.map((item) => item.toJson()).toList(),
    };
  }
}
