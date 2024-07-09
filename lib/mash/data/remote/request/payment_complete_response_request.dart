class PaymentCompleteResponseRequest {
  final String compId;
  final String orderId;
  final String platform;

  PaymentCompleteResponseRequest({
    required this.compId,
    required this.orderId,
    required this.platform,
  });
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": compId,
      "P_ORDER_ID": orderId,
      "P_PLATFORM": platform,
    };
  }
}
