class PaymentTokenEntity {
  String cfOrderId;
  String orderId;
  String paymentSessionId;

  PaymentTokenEntity({
    required this.cfOrderId,
    required this.orderId,
    required this.paymentSessionId,
  });
}
