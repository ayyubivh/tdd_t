import 'package:equatable/equatable.dart';

class PaymentFinalAmountEntity extends Equatable {
  final String? amount;
  final String? discountAmount;
  final String? discountPercentage;

  const PaymentFinalAmountEntity(
      this.amount, this.discountAmount, this.discountPercentage);
  @override
  List<Object?> get props => [];
}
