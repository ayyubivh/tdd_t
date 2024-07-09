import 'dart:convert';
import '../../../../domain/entities/payment/payment_complete_response_entity.dart';

class PaymentCompleteResponseModel extends PaymentCompleteResponseEntity {
  const PaymentCompleteResponseModel({
    required super.cfOrderId,
    required super.createdAt,
    required super.orderId,
    required super.orderStatus,
    required super.paymentMethods,
    required super.orderNote,
    required super.orderAmount,
    required super.payload,
  });

  factory PaymentCompleteResponseModel.fromJson(Map<String?, dynamic> json) {
    return PaymentCompleteResponseModel(
      cfOrderId: json['cf_order_id'],
      createdAt: json['created_at'],
      orderId: json['order_id'],
      orderStatus: json['order_status'],
      paymentMethods: json['payment_methods'] ?? '',
      orderNote: json['order_note'],
      orderAmount: json['order_amount'],
      payload: json['payload'],
    );
  }
}
