import 'package:equatable/equatable.dart';

class PaymentCompleteResponseEntity extends Equatable {
  final String? cfOrderId;
  final String? createdAt;
  final String? orderId;
  final String? orderStatus;
  final String? paymentMethods;
  final String? orderNote;
  final String? orderAmount;
  final String? payload;

  const PaymentCompleteResponseEntity(
      {required this.cfOrderId,
      required this.createdAt,
      required this.orderId,
      required this.orderStatus,
      required this.paymentMethods,
      required this.orderNote,
      required this.orderAmount,
      required this.payload,
      s});
  @override
  List<Object?> get props => [];
}
