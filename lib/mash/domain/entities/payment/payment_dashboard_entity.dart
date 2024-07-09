class PaymentDashboardEntity {
  final String? feeTrackId;
  final String? planName;
  final String? instalmentName;
  final String? feeHeadName;
  final String? academicId;
  final String? feeAmount;
  final String? feeAmountPaid;
  final String? feeAmountBalance;
  final String? payableAmount;
  final String? paidDate;
  final String? annualConcession;
  final String? fineAmount;
  final String? concessionAmount;
  final String? dueDate;
  final String? due;
  final String? isDue;

  final String? totalAmount;
  final String? paymentType;
  final String? paidBy;
  final String? referenceNo;
  final String? receiptNo;
  final String? phoneNo;
  final String? emailId;
  final String? historyTrackId;
  final String? paidOn;

  PaymentDashboardEntity({
    required this.totalAmount,
    required this.paymentType,
    required this.paidBy,
    required this.referenceNo,
    required this.receiptNo,
    required this.phoneNo,
    required this.emailId,
    required this.historyTrackId,
    required this.paidOn,
    required this.feeTrackId,
    required this.planName,
    required this.instalmentName,
    required this.feeHeadName,
    required this.academicId,
    required this.feeAmount,
    required this.feeAmountPaid,
    required this.feeAmountBalance,
    required this.payableAmount,
    required this.paidDate,
    required this.annualConcession,
    required this.fineAmount,
    required this.concessionAmount,
    required this.dueDate,
    required this.due,
    required this.isDue,
  });
}
