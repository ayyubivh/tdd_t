import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/get_fee_success_receipt_request.dart';
import 'package:mash/mash/data/remote/request/payment_complete_response_request.dart';
import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/data/remote/request/payment_status_update_request.dart';
import 'package:mash/mash/data/remote/request/payment_token_request.dart';
import 'package:mash/mash/data/remote/request/payment_uniqueid_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/repositories/payment_repository.dart';

import '../../domain/entities/payment/payment_complete_response_entity.dart';
import '../../domain/entities/payment/payment_final_amount_entiy.dart';
import '../../domain/entities/payment/payment_token_entity.dart';
import '../remote/data_sources/pament_remote_data_source.dart';
import '../remote/request/payment_dashboard_request.dart';
import '../remote/request/payment_save_response.dart';

@LazySingleton(as: PaymentRepository)
class PaymentRepoImpl implements PaymentRepository {
  final PaymentRemoteDataSource paymentRemoteDataSource;

  PaymentRepoImpl({required this.paymentRemoteDataSource});
  @override
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params) {
    return paymentRemoteDataSource.getPaymentDashboard(params);
  }

  @override
  Future<PaymentFinalAmountEntity> getPaymentFinal(PaymentFinalRequest params) {
    return paymentRemoteDataSource.getPaymentFinal(params);
  }

  @override
  Future<String> getPaymentOrderId(PaymentUniqueIdRequest params) {
    return paymentRemoteDataSource.getPaymentOrderId(params);
  }

  @override
  Future<PaymentTokenEntity> getPaymentToken(PaymentTokenRequest params) {
    return paymentRemoteDataSource.getPaymentToken(params);
  }

  @override
  Future<PaymentCompleteResponseEntity> getPaymentCompleteResponse(
      PaymentCompleteResponseRequest params) {
    return paymentRemoteDataSource.getPaymentCompleteResponse(params);
  }

  @override
  Future<String> postPaymentStatusUpdate(PaymentStatusUpdateRequest params) {
    return paymentRemoteDataSource.postPaymentStatusUpdate(params);
  }

  @override
  Future<void> savePaymentResponse(PaymentSaveResponseRequest params) {
    return paymentRemoteDataSource.savePaymentResponse(params);
  }

  @override
  Future<String> getFeeSuccessReceipt(
      GetFeeSuccessReceiptRequest getFeeSuccessReceiptRequest) {
    return paymentRemoteDataSource
        .getFeeSuccessReceipt(getFeeSuccessReceiptRequest);
  }

  @override
  Future<String> getFeeReceiptByDocname(String docName) {
    return paymentRemoteDataSource.getFeeReceiptByDocname(docName);
  }
}
