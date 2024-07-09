import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/payment/payment_complete_response_model.dart';
import 'package:mash/mash/data/remote/models/payment/payment_dashboard_model.dart';
import 'package:mash/mash/data/remote/models/payment/payment_final_amount_model.dart';
import 'package:mash/mash/data/remote/models/payment/payment_toke_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/payment/payment_token_entity.dart';
import '../../../domain/entities/payment/payment_complete_response_entity.dart';
import '../../../domain/entities/payment/payment_dashboard_entity.dart';
import '../../../domain/entities/payment/payment_final_amount_entiy.dart';
import '../request/get_fee_success_receipt_request.dart';
import '../request/payment_complete_response_request.dart';
import '../request/payment_dashboard_request.dart';
import '../request/payment_final_amount_request.dart';
import '../request/payment_save_response.dart';
import '../request/payment_status_update_request.dart';
import '../request/payment_token_request.dart';
import '../request/payment_uniqueid_request.dart';

abstract interface class PaymentRemoteDataSource {
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

@LazySingleton(as: PaymentRemoteDataSource)
@injectable
class PaymentRemoteDataSourceImpl extends PaymentRemoteDataSource {
  final ApiProvider apiProvider;

  PaymentRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<List<PaymentDashboardEntity>> getPaymentDashboard(
      PaymentDashboardRequest params) async {
    final data = await apiProvider.get(
      AppRemoteRoutes.paymentDashboard,
      body: params.toJson(),
    );

    return List<PaymentDashboardEntity>.from(
            data['resTable'].map((e) => PaymentDashboardModel.fromJson(e)))
        .toList();
  }

  @override
  Future<PaymentFinalAmountEntity> getPaymentFinal(params) async {
    final data = await apiProvider.get(AppRemoteRoutes.paymentFinal,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return PaymentFinalAmountModel.fromJson(dataList.first);
  }

  @override
  Future<String> getPaymentOrderId(PaymentUniqueIdRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.paymentOrderId,
        body: params.toJson());

    return data['resMessage'];
  }

  @override
  Future<PaymentTokenEntity> getPaymentToken(PaymentTokenRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.paymentToken,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => PaymentTokenModel.fromJson(e)).toList().first;
  }

  @override
  Future<PaymentCompleteResponseEntity> getPaymentCompleteResponse(
      PaymentCompleteResponseRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.paymentCompleteResponse,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList
        .map((e) => PaymentCompleteResponseModel.fromJson(e))
        .toList()
        .first;
  }

  @override
  Future<String> postPaymentStatusUpdate(
      PaymentStatusUpdateRequest params) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.paymentStatusUpdate, params.toJson());
    return data['resMessage'];
  }

  @override
  Future<void> savePaymentResponse(PaymentSaveResponseRequest params) async {
    try {
      final data = await apiProvider.post(
          AppRemoteRoutes.savePaymentResponse, params.toJson());
      print('data ----- $data');
    } catch (e, s) {
      prettyPrint('error $e, stack race $s');
    }
  }

  @override
  Future<String> getFeeSuccessReceipt(
      GetFeeSuccessReceiptRequest getFeeSuccessReceiptRequest) async {
    final data = await apiProvider.get(AppRemoteRoutes.getFeeSuccessReceipt,
        body: getFeeSuccessReceiptRequest.toJson());
    final res = data['resMessage'];
    return res;
  }

  @override
  Future<String> getFeeReceiptByDocname(String docName) async {
    final data = await apiProvider.get(AppRemoteRoutes.getFeeReceiptByDocname,
        body: {'P_MODULE_NAME': 'FEES', 'P_DOC_NAME': docName});
    final res = data['resMessage'];
    return res;
  }
}
