import 'package:mash/mash/domain/entities/payment/payment_token_entity.dart';

class PaymentTokenModel extends PaymentTokenEntity {
  PaymentTokenModel(
      {required super.cfOrderId,
      required super.orderId,
      required super.paymentSessionId});
  factory PaymentTokenModel.fromJson(Map<String, dynamic> json) {
    return PaymentTokenModel(
      cfOrderId: json['cf_order_id'] as String,
      orderId: json['order_id'] as String,
      paymentSessionId: json['payment_session_id'] as String,
    );
  }
}
