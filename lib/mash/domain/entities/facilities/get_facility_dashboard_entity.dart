import 'package:equatable/equatable.dart';

class GetFacilityDashBoardEntity extends Equatable {
  final String? feeSubheadId;
  final String? subheadName;
  final String? feeHeadId;
  final String? subHeadId;
  final String? requestOn;
  final String? endDate;
  final String? description;
  final String? approvalStatus;
  final String? pickupPlace;
  final String? dropPlace;
  final String? dropId;
  final String? pickUpId;
  final String? subStatus;

  const GetFacilityDashBoardEntity(
      {required this.feeSubheadId,
      required this.subheadName,
      required this.feeHeadId,
        required this.subHeadId,
      required this.requestOn,
        required this.subStatus,
      required this.endDate,
      required this.description,
      required this.approvalStatus,
      required this.pickupPlace,
       required this.dropId, required this.pickUpId,
        required this.dropPlace});

  @override
  List<Object?> get props => [
        subheadName,
        feeSubheadId,
        feeHeadId,
    subHeadId,
        requestOn,
        endDate,
        description,
        approvalStatus,
        pickupPlace,
        dropPlace,
    subStatus
      ];
}
