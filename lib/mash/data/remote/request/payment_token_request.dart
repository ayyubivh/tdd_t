import 'package:json_annotation/json_annotation.dart';

part 'payment_token_request.g.dart';

@JsonSerializable()
class PaymentTokenRequest {
  @JsonKey(name: 'P_COMP_ID')
  final String compId;

  @JsonKey(name: 'P_ORDER_ID')
  final String orderId;

  @JsonKey(name: 'P_ORDER_AMOUNT')
  final String orderAmount;

  @JsonKey(name: 'P_STUDENT_ID')
  final String studentId;

  @JsonKey(name: 'P_USER_NAME')
  final String userName;

  @JsonKey(name: 'P_USER_EMAIL')
  final String userEmail;

  @JsonKey(name: 'P_USER_MOB')
  final String userMob;

  @JsonKey(name: 'P_USER_REMARK')
  final String userRemark;

  @JsonKey(name: 'P_PLATFORM')
  final String platform;

  PaymentTokenRequest({
    required this.compId,
    required this.orderId,
    required this.orderAmount,
    required this.studentId,
    required this.userName,
    required this.userEmail,
    required this.userMob,
    required this.userRemark,
    required this.platform,
  });

  factory PaymentTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentTokenRequestToJson(this);
}
