import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/data/remote/request/payment_status_update_request.dart';
import 'package:mash/mash/data/remote/request/payment_token_request.dart';
import 'package:mash/mash/data/remote/request/payment_uniqueid_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_complete_response_entity.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/entities/payment/payment_final_amount_entiy.dart';

import '../../data/remote/request/get_fee_success_receipt_request.dart';
import '../../data/remote/request/payment_complete_response_request.dart';
import '../../data/remote/request/payment_dashboard_request.dart';
import '../../data/remote/request/payment_save_response.dart';
import '../entities/payment/payment_token_entity.dart';

abstract interface class PaymentRepository {
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params);

  Future<PaymentFinalAmountEntity> getPaymentFinal(PaymentFinalRequest params);

  Future<String> getPaymentOrderId(PaymentUniqueIdRequest params);

  Future<PaymentTokenEntity> getPaymentToken(PaymentTokenRequest params);

  Future<PaymentCompleteResponseEntity> getPaymentCompleteResponse(
      PaymentCompleteResponseRequest params);

  Future<String> postPaymentStatusUpdate(PaymentStatusUpdateRequest params);

  Future<void> savePaymentResponse(PaymentSaveResponseRequest params);
  Future<String> getFeeSuccessReceipt(
      GetFeeSuccessReceiptRequest getFeeSuccessReceiptRequest);
  Future<String> getFeeReceiptByDocname(String docName);
}
