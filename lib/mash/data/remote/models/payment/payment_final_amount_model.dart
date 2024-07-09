import 'package:mash/mash/domain/entities/payment/payment_final_amount_entiy.dart';

class PaymentFinalAmountModel extends PaymentFinalAmountEntity {
  const PaymentFinalAmountModel(
      super.amount, super.discountAmount, super.discountPercentage);

  factory PaymentFinalAmountModel.fromJson(Map<String, dynamic> json) {
    return PaymentFinalAmountModel(
      json['Amount'],
      json['Discount_Amount'],
      json['Discount_percentage'],
    );
  }
}
