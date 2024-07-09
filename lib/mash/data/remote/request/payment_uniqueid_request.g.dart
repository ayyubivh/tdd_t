// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_uniqueid_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentUniqueIdRequest _$PaymentUniqueIdRequestFromJson(
        Map<String, dynamic> json) =>
    PaymentUniqueIdRequest(
      studentId: json['P_STUDENT_ID'] as String?,
      compId: json['P_COMP_ID'] as String?,
      installmentId: json['P_INSTALLMENT_ID'] as String?,
      remark: json['P_REMARK'] as String?,
      totalAmount: json['P_TOTAL_AMOUNT'] as String?,
      studentName: json['P_STUDENT_NAME'] as String?,
      parentName: json['P_PARENT_NAME'] as String?,
      parentMob: json['P_PARENT_MOB'] as String?,
      parentEmail: json['P_PARENT_EMAIL'] as String?,
      academicId: json['P_ACADEMIC_ID'] as String?,
    );

Map<String, dynamic> _$PaymentUniqueIdRequestToJson(
        PaymentUniqueIdRequest instance) =>
    <String, dynamic>{
      'P_STUDENT_ID': instance.studentId,
      'P_COMP_ID': instance.compId,
      'P_INSTALLMENT_ID': instance.installmentId,
      'P_REMARK': instance.remark,
      'P_TOTAL_AMOUNT': instance.totalAmount,
      'P_STUDENT_NAME': instance.studentName,
      'P_PARENT_NAME': instance.parentName,
      'P_PARENT_MOB': instance.parentMob,
      'P_PARENT_EMAIL': instance.parentEmail,
      'P_ACADEMIC_ID': instance.academicId,
    };
