

import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';

class GetFacilityDashboardModel extends GetFacilityDashBoardEntity{
  const GetFacilityDashboardModel({required super.subHeadId,required super.feeSubheadId, required super.subheadName, required super.feeHeadId, required super.requestOn, required super.endDate, required super.description, required super.approvalStatus, required super.pickupPlace, required super.dropPlace, required super.dropId, required super.pickUpId, required super.subStatus});

  factory GetFacilityDashboardModel.fromJson(Map<String, dynamic> json) {
    return GetFacilityDashboardModel(
      subHeadId: json['SUBHEAD_ID'] ?? '',
      feeSubheadId: json['FEE_SUBHEAD_ID'] ?? '',
      subheadName: json['SUBHEAD_NAME'] ?? '',
      feeHeadId: json['FEE_HEAD_ID'] ?? '',
      requestOn: json['REQUEST_ON'] ?? '',
      endDate: json['END_DATE'] ?? '',
      description: json['DESCRIPTION'] ?? '',
      approvalStatus: json['APPROVAL_STATUS'] ?? '',
      pickupPlace: json['PICKUP_PLACE'] ?? '',
      dropPlace: json['DROP_PLACE'] ?? '',
      dropId: json['DROP_STOPID'] ?? '',
      pickUpId: json['PICKUP_STOPID'] ?? '',
      subStatus: json['SUB_STATUS'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'FEE_SUBHEAD_ID': feeSubheadId,
      'SUBHEAD_NAME': subheadName,
      'FEE_HEAD_ID': feeHeadId,
      'REQUEST_ON': requestOn,
      'END_DATE': endDate,
      'DESCRIPTION': description,
      'APPROVAL_STATUS': approvalStatus,
      'PICKUP_PLACE': pickupPlace,
      'DROP_PLACE': dropPlace,
      'SUBHEAD_ID': subHeadId,
      "PICKUP_STOPID": pickUpId,
      "DROP_STOPID": dropId,
      "SUB_STATUS": subStatus
    };
  }


}