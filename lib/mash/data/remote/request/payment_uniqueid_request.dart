import 'package:json_annotation/json_annotation.dart';

part 'payment_uniqueid_request.g.dart';

@JsonSerializable()
class PaymentUniqueIdRequest {
  @JsonKey(name: 'P_STUDENT_ID')
  final String? studentId;

  @JsonKey(name: 'P_COMP_ID')
  final String? compId;

  @JsonKey(name: 'P_INSTALLMENT_ID')
  final String? installmentId;

  @JsonKey(name: 'P_REMARK')
  final String? remark;

  @JsonKey(name: 'P_TOTAL_AMOUNT')
  final String? totalAmount;

  @JsonKey(name: 'P_STUDENT_NAME')
  final String? studentName;

  @JsonKey(name: 'P_PARENT_NAME')
  final String? parentName;

  @JsonKey(name: 'P_PARENT_MOB')
  final String? parentMob;

  @JsonKey(name: 'P_PARENT_EMAIL')
  final String? parentEmail;

  @JsonKey(name: 'P_ACADEMIC_ID')
  final String? academicId;

  PaymentUniqueIdRequest({
    required this.studentId,
    required this.compId,
    required this.installmentId,
    required this.remark,
    required this.totalAmount,
    required this.studentName,
    required this.parentName,
    required this.parentMob,
    required this.parentEmail,
    required this.academicId,
  });

  factory PaymentUniqueIdRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentUniqueIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentUniqueIdRequestToJson(this);
}
