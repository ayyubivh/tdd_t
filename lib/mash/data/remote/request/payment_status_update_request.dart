class PaymentStatusUpdateRequest {
  final String compId;
  final String orderId;
  final String paymentStatus;
  final String payload;

  PaymentStatusUpdateRequest(
      {required this.compId,
      required this.orderId,
      required this.paymentStatus,
      required this.payload});

  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": compId,
      "P_ORDER_ID": orderId,
      "P_PAYMENT_STS": paymentStatus,
      "P_PAYLOAD": payload
    };
  }
}
