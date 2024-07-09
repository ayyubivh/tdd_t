




import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';

class IdRequestTypeModel extends IdRequestEntity{

 const IdRequestTypeModel({ required super.request, required super.tabId});

  factory IdRequestTypeModel.fromJson(Map<String, dynamic> json) {
    return IdRequestTypeModel(
      request: json['REQUEST'],
      tabId: json['TAB_ID'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      request: request,
      tabId: tabId,
    };
  }
}