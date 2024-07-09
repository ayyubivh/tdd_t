import 'dart:async';
import 'dart:developer';

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpayment/cfwebcheckoutpayment.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpaymentgateway/cfpaymentgatewayservice.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfsession/cfsession.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfenums.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfexceptions.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/notification.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/get_fee_success_receipt_request.dart';
import 'package:mash/mash/data/remote/request/payment_complete_response_request.dart';
import 'package:mash/mash/data/remote/request/payment_dashboard_request.dart';
import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/data/remote/request/payment_save_response.dart';
import 'package:mash/mash/data/remote/request/payment_status_update_request.dart';
import 'package:mash/mash/data/remote/request/payment_token_request.dart';
import 'package:mash/mash/data/remote/request/payment_uniqueid_request.dart';
import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';
import 'package:mash/mash/domain/entities/payment/payment_final_amount_entiy.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_fee_receipt_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_order_id_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/get_payment_token_usecase.dart';
import 'package:mash/mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../domain/use_cases/payment/get_fee_receipt_by_docname_usecase.dart';
import '../../../../domain/use_cases/payment/get_payment_complete_response_usecase.dart';
import '../../../../domain/use_cases/payment/save_payment_reponse_usecase.dart';
import '../../../utils/enums.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final GetPaymentDashboardUsecase getPaymentDashboardUsecase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final GetPaymentFinalAmountUsecase getPaymentFinalAmountUsecase;
  final GetPaymentOrderIdUsecase getPaymentOrderIdUsecase;
  final GetPaymentTokenUsecase getPaymentTokenUsecase;
  final GetPaymentCompleteResponseUsecase getPaymentCompleteResponseUsecase;
  final PostPaymentStatusUpdateUsecase postPaymentStatusUpdateUsecase;
  final SavePaymentResponseUsecase savePaymentResponseUsecase;
  final GetPaymentFeeReceiptUsecase getPaymentFeeReceiptUsecase;
  final GetFeeReceiptByDocnameUsecase getFeeReceiptByDocnameUsecase;
  PaymentBloc(
      this.getPaymentDashboardUsecase,
      this.getUserInfoUseCase,
      this.getPaymentFinalAmountUsecase,
      this.getPaymentOrderIdUsecase,
      this.getPaymentTokenUsecase,
      this.getPaymentCompleteResponseUsecase,
      this.postPaymentStatusUpdateUsecase,
      this.savePaymentResponseUsecase,
      this.getPaymentFeeReceiptUsecase,
      this.getFeeReceiptByDocnameUsecase)
      : super(PaymentState.initial()) {
    on<_GetPaymentDashboard>(_onGetPaymentDashboard);
    on<_SelectedItemIndex>(_onSelectedItemIndex);
    on<_SelectPaymentsCheckboxEvent>(_onSelectPaymentsCheckboxEvent);
    on<_GetPaymentFinalAmount>(_getPaymentFinalAmount);
    on<_GetPaymentOrderId>(_getPaymentOrderId);
    on<_GetPaymentTokenAndOpenPayment>(_getPaymentTokenAndOpenPayment);
    on<_GetPaymentCompleteResponse>(_getPaymentCompleteResponse);
    on<_PaymentDisposeEvent>(_disposeEvent);
    on<_GetFeeReceipt>(_getFeeReceipt);
    on<_GetFeeReceiptByDocName>(_getFeeReceiptByName);
  }

  Future<void> _onGetPaymentDashboard(
      _GetPaymentDashboard event, Emitter<PaymentState> emit) async {
    if (event.paymentStatusType == PaymentStatusType.transaction) {
      emit(state.copyWith(paymentHistoryResponse: ResponseClassify.loading()));
    } else {
      emit(
          state.copyWith(paymentDashboardResponse: ResponseClassify.loading()));
    }

    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await getPaymentDashboardUsecase.call(
        PaymentDashboardRequest(
          trackId: (event.paymentStatusType == PaymentStatusType.paid ||
                  event.paymentStatusType == PaymentStatusType.pending)
              ? 0
              : int.parse(event.trackId ?? ''),
          companyId: userInfo?.compId ?? "",
          studentId: event.userId,
          academicId: userInfo?.academicId ?? '',
          actionId: event.paymentStatusType == PaymentStatusType.transaction
              ? '2'
              : '1',
          completionStatus:
              (event.paymentStatusType == PaymentStatusType.paid ||
                      event.paymentStatusType == PaymentStatusType.transaction)
                  ? '1'
                  : '0',
        ),
      );

      if (event.paymentStatusType != PaymentStatusType.transaction) {
        final Set<String?> dueId =
            data.where((e) => e.isDue == '1').map((e) => e.feeTrackId).toSet();
        final totalAmount = data
            .where((i) => dueId.contains(i.feeTrackId))
            .fold(0, (sum, i) => sum + int.parse(i.feeAmountBalance ?? '0'));
        emit(state.copyWith(
          paymentDashboardResponse: ResponseClassify.completed(data),
          selectedCheckboxItems: dueId,
          totalAmount: totalAmount.toString(),
        ));
      } else {
        emit(state.copyWith(
            paymentHistoryResponse: ResponseClassify.completed(data)));
        prettyPrint('state of the ${state.paymentDashboardResponse.data}');
      }
    } catch (e) {
      if (event.paymentStatusType == PaymentStatusType.transaction) {
        emit(state.copyWith(paymentHistoryResponse: ResponseClassify.error(e)));
      } else {
        emit(state.copyWith(
            paymentDashboardResponse: ResponseClassify.error(e)));
      }
    }
  }

  void _onSelectedItemIndex(
      _SelectedItemIndex event, Emitter<PaymentState> emit) {
    emit(state.copyWith(selectedItemIndex: event.index));
  }

  void _onSelectPaymentsCheckboxEvent(
      _SelectPaymentsCheckboxEvent event, Emitter<PaymentState> emit) {
    final Set<String> currentSet = Set.from(state.selectedCheckboxItems ?? {});
    if (currentSet.contains(event.id)) {
      currentSet.remove(event.id);
    } else {
      currentSet.add(event.id);
    }
    final totalAmount = state.paymentDashboardResponse.data!
        .where((i) => currentSet.contains(i.feeTrackId))
        .fold(0, (sum, i) => sum + int.parse(i.feeAmountBalance ?? '0'));
    emit(state.copyWith(
        selectedCheckboxItems: currentSet,
        totalAmount: totalAmount.toString()));
  }

  _getPaymentFinalAmount(
      _GetPaymentFinalAmount event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(
      totalAmount: '0',
      installmentId: event.installmentId,
    ));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      prettyPrint('installment id ${event.installmentId}');
      final data = await getPaymentFinalAmountUsecase.call(PaymentFinalRequest(
          pCompId: userInfo?.compId ?? '',
          pInstallmentId: event.installmentId,
          pStudentId: event.studentId,
          pTotalAmount: event.totalAmount));
      emit(
        state.copyWith(
            paymentFinalAmountResponse: data, totalAmount: data.amount ?? ''),
      );
    } catch (e) {
      emit(state.copyWith(
          paymentError: "An error occurred. Please try again later."));
    }
  }

  _getPaymentOrderId(
      _GetPaymentOrderId event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(paymentOrderResponse: ResponseClassify.loading()));
    try {
      final user = await getUserInfoUseCase.call(NoParams());
      final data = await getPaymentOrderIdUsecase.call(PaymentUniqueIdRequest(
        studentId: event.studentId,
        compId: user?.compId,
        installmentId: event.installmentId,
        remark: event.remark,
        totalAmount: state.totalAmount,
        studentName: event.student,
        parentName: event.student,
        parentMob: event.mobile,
        parentEmail: event.email,
        academicId: user?.academicId,
      ));
      add(_GetPaymentTokenAndOpenPayment(
        studentId: event.studentId,
        installmentId: event.installmentId,
        remark: event.remark,
        email: event.email,
        mobile: event.mobile,
        orderId: data,
        student: event.student,
      ));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(paymentOrderResponse: ResponseClassify.error(e)));
    }
  }

  _getPaymentTokenAndOpenPayment(
      _GetPaymentTokenAndOpenPayment event, Emitter<PaymentState> emit) async {
    final user = await getUserInfoUseCase.call(NoParams());

    final sessionTokenData =
        await getPaymentTokenUsecase.call(PaymentTokenRequest(
      compId: user?.compId ?? "",
      orderId: event.orderId,
      orderAmount: state.totalAmount,
      studentId: event.studentId,
      userName: event.student,
      userEmail: event.email,
      userMob: event.mobile,
      userRemark: event.remark,
      platform: "UAT",
    ));
    if (sessionTokenData.cfOrderId.isNotEmpty) {}
    try {
      var session = CFSessionBuilder()
          .setEnvironment(CFEnvironment.SANDBOX)
          .setOrderId(sessionTokenData.orderId)
          .setPaymentSessionId(sessionTokenData.paymentSessionId)
          .build();
      var cfWebCheckout =
          CFWebCheckoutPaymentBuilder().setSession(session).build();
      var cfpaymenteGateway = CFPaymentGatewayService();
      cfpaymenteGateway.setCallback((orderId) {
        add(_GetPaymentCompleteResponse(
            installMentId: event.installmentId,
            orderId: orderId,
            email: event.email,
            remark: event.remark,
            userName: event.student,
            studenId: event.studentId,
            mobile: event.mobile));

        prettyPrint('callback first ${orderId.toString()}');
      }, (response, orderId) {
        add(_GetPaymentCompleteResponse(
          installMentId: event.installmentId,
          orderId: orderId,
          email: event.email,
          remark: event.remark,
          userName: event.student,
          studenId: event.studentId,
          mobile: event.mobile,
        ));
        prettyPrint(
            'callbad second response================= ${response.toString()} p1 ==========${orderId.toString()}');
      });
      cfpaymenteGateway.doPayment(cfWebCheckout);

      return session;
    } on CFException catch (e, s) {
      print('error on cashfree --->>> ${e.message} strack race $s');
    }
  }

  _getPaymentCompleteResponse(
      _GetPaymentCompleteResponse event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(paymentOrderResponse: ResponseClassify.initial()));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await getPaymentCompleteResponseUsecase
          .call(PaymentCompleteResponseRequest(
        compId: userInfo?.compId ?? "",
        orderId: event.orderId ?? "",
        platform: "UAT",
      ));
      prettyPrint('data from get payment complete response $data');
      //if reponse is success call payment status update
      if (data.cfOrderId != null) {
        final res = await postPaymentStatusUpdateUsecase
            .call(PaymentStatusUpdateRequest(
          compId: userInfo?.compId ?? "",
          orderId: data.orderId ?? "",
          paymentStatus: data.orderStatus ?? "",
          payload: data.payload ?? "",
        ));
        prettyPrint('payment response $res');
      }
      if (data.orderStatus == OrderStatus.PAID.name) {
        add(_GetPaymentDashboard(
            paymentStatusType: PaymentStatusType.pending,
            userId: event.studenId ?? ""));
        emit(state.copyWith(
            paymentOrderResponse:
                ResponseClassify.completed(OrderStatus.PAID)));
        final discountAmount = state.paymentFinalAmountResponse?.discountAmount;
        int isDiscount = 0;
        if (int.parse(discountAmount!) > 1) {
          isDiscount = 1;
        } else {
          isDiscount = 0;
        }
        await savePaymentResponseUsecase.call(PaymentSaveResponseRequest(
          pCompId: userInfo?.compId,
          pStudentId: event.studenId,
          pInstalmentId: event.installMentId,
          pTotalAmount: data.orderAmount,
          pUserName: event.userName,
          pUserMob: event.mobile,
          pUserEmail: event.email,
          pCfOrderId: data.cfOrderId,
          pPaymentType: data.paymentMethods,
          pPaymentDate: data.createdAt,
          pRemark: event.remark,
          pOrderId: data.orderId,
          discountAmount: discountAmount,
          isDiscount: isDiscount.toString(),
        ));

        //call save payment response api
      } else if (data.orderStatus == OrderStatus.ACTIVE.name) {
        emit(state.copyWith(
            paymentOrderResponse:
                ResponseClassify.completed(OrderStatus.ACTIVE)));
        //redirect to processing page
      } else if (data.orderStatus == OrderStatus.FAILED.name) {
        emit(state.copyWith(
            paymentOrderResponse:
                ResponseClassify.completed(OrderStatus.FAILED)));
        //redirect to failed page
      }
    } catch (e) {
      emit(state.copyWith(paymentOrderResponse: ResponseClassify.error(e)));
    }
  }

  void _disposeEvent(_PaymentDisposeEvent event, Emitter<PaymentState> emit) {
    final Set<String> currentSet = Set.from(state.selectedCheckboxItems ?? {});
    currentSet.clear();
    final dueItems = state.paymentDashboardResponse.data
            ?.where((element) => element.due == '1')
            .map((e) => e.feeTrackId)
            .toSet() ??
        {};

    currentSet.removeAll(dueItems);

    emit(state.copyWith(
      totalAmount: '0',
      paymentOrderResponse: ResponseClassify.initial(),
      paymentFinalAmountResponse: null,
      paymentError: '',
      feeRecieptResponse: ResponseClassify.initial(),
      shareFile: '',
      selectedCheckboxItems: currentSet,
    ));
  }

  _getFeeReceipt(_GetFeeReceipt event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(feeRecieptResponse: ResponseClassify.loading()));

    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final compId = userInfo?.compId ?? "";
      final academicId = userInfo?.academicId ?? "";

      if (compId.isEmpty || academicId.isEmpty) {
        throw Exception("User information is incomplete");
      }

      final data = await getPaymentFeeReceiptUsecase.call(
        GetFeeSuccessReceiptRequest(
          compId: compId,
          studentId: event.studentId,
          academicId: academicId,
          installmentId: '0',
        ),
      );

      final receipt = await _downloadReceipt(data, event.receiptType);

      if (receipt != null) {
        if (event.receiptType == ReceiptType.share) {
          emit(state.copyWith(feeRecieptResponse: ResponseClassify.initial()));
          emit(state.copyWith(shareFile: receipt));
        } else {
          emit(state.copyWith(
              feeRecieptResponse: ResponseClassify.completed(receipt)));
          NotificationService().showNotification(receipt);
        }
      } else {
        emit(state.copyWith(
            feeRecieptResponse:
                ResponseClassify.error('Failed to download receipt')));
      }
    } catch (e) {
      emit(state.copyWith(
          feeRecieptResponse:
              ResponseClassify.error('Error fetching receipt: $e')));
    }
  }

  _getFeeReceiptByName(
      _GetFeeReceiptByDocName event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(feeReceiptByDocname: ResponseClassify.loading()));
    try {
      final data = await getFeeReceiptByDocnameUsecase.call(event.docName);
      final tempDir = await getTemporaryDirectory();
      final tempPath = '${tempDir.path}/receipt.pdf';

      ApiProvider().downloadFile(file: File(tempPath), url: data).listen(
          onDone: () {
        // state.progressEvent.value = 0;
      }, (event) {
        state.progressEvent.value = event;
        state.progressEvent.notifyListeners();
      });

      emit(state.copyWith(
          feeReceiptByDocname: ResponseClassify.completed(tempPath)));
    } catch (e) {
      emit(state.copyWith(feeReceiptByDocname: ResponseClassify.error(e)));
    }
  }

  Future<String?> _downloadReceipt(
    String url,
    ReceiptType receiptType,
  ) async {
    try {
      if (!await FlutterFileDialog.isPickDirectorySupported()) {
        prettyPrint("Picking directory not supported");
        return null;
      }

      final tempDir = await getTemporaryDirectory();
      final tempPath = '${tempDir.path}/receipt.pdf';

      ApiProvider().downloadFile(file: File(tempPath), url: url).listen(
          onDone: () {
        // state.progressEvent.value = 0;
      }, (event) {
        state.progressEvent.value = event;
        state.progressEvent.notifyListeners();
      });

      if (receiptType == ReceiptType.share) {
        var path = File(state.shareFile);
        if (await path.exists()) {
          Share.shareXFiles([XFile(path.path)]);
        } else {
          prettyPrint('noto found');
        }
        return tempPath;
      }

      final pickedDirectory = await FlutterFileDialog.pickDirectory();
      if (pickedDirectory != null) {
        final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
        final fileName = "receipt_$timestamp.pdf";

        final uint8List = await File(tempPath).readAsBytes();
        final params = SaveFileDialogParams(
          data: uint8List,
          fileName: fileName,
        );

        await FlutterFileDialog.saveFile(params: params);

        return tempPath;
      } else {
        prettyPrint("Directory not picked");
      }
    } catch (e) {
      prettyPrint('Error downloading receipt: $e');
    }
    return null;
  }
}
