// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTokenRequest _$PaymentTokenRequestFromJson(Map<String, dynamic> json) =>
    PaymentTokenRequest(
      compId: json['P_COMP_ID'] as String,
      orderId: json['P_ORDER_ID'] as String,
      orderAmount: json['P_ORDER_AMOUNT'] as String,
      studentId: json['P_STUDENT_ID'] as String,
      userName: json['P_USER_NAME'] as String,
      userEmail: json['P_USER_EMAIL'] as String,
      userMob: json['P_USER_MOB'] as String,
      userRemark: json['P_USER_REMARK'] as String,
      platform: json['P_PLATFORM'] as String,
    );

Map<String, dynamic> _$PaymentTokenRequestToJson(
        PaymentTokenRequest instance) =>
    <String, dynamic>{
      'P_COMP_ID': instance.compId,
      'P_ORDER_ID': instance.orderId,
      'P_ORDER_AMOUNT': instance.orderAmount,
      'P_STUDENT_ID': instance.studentId,
      'P_USER_NAME': instance.userName,
      'P_USER_EMAIL': instance.userEmail,
      'P_USER_MOB': instance.userMob,
      'P_USER_REMARK': instance.userRemark,
      'P_PLATFORM': instance.platform,
    };
