import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/post_id_request.dart';
import 'package:mash/mash/data/remote/request/transfer_request_type_request.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/id_request/id_request_type_usecase.dart';
import 'package:mash/mash/domain/use_cases/id_request/post_id_request.dart';

part 'id_request_event.dart';
part 'id_request_state.dart';
part 'id_request_bloc.freezed.dart';

@injectable
class IdRequestBloc extends Bloc<IdRequestEvent, IdRequestState> {
  IdRequestBloc() : super(IdRequestState.initial()) {
    on<IdRequestEvent>((event, emit) {});
    on<_GetIdRequest>(_getTransferRequestType);
    on<_IdRequestPost>(_postIdRequest);
    on<_SelectReqId>(_selectReqId);
  }

  FutureOr<void> _getTransferRequestType(
      _GetIdRequest event, Emitter<IdRequestState> emit) async {
    emit(state.copyWith(getIdRequestType: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await getIdRequestType
          .call(IdRequest(companyId: loginInfo?.compId ?? ""));
      emit(state.copyWith(
          getIdRequestType: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(getIdRequestType: ResponseClassify.error(e)));
    }
  }

  final getIdRequestType = getIt<GetIdRequestTypeUseCase>();
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final PostIdRequestUseCase postUserUseCase = getIt<PostIdRequestUseCase>();

  static IdRequestBloc get(context) => BlocProvider.of(context);

  FutureOr<void> _postIdRequest(
      _IdRequestPost event, Emitter<IdRequestState> emit) async {
    emit(state.copyWith(postIdRequest: ResponseClassify.loading()));
    try {
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await postUserUseCase.call(PostIdRequest(
          pUserId: loginInfo?.usrId ?? '',
          pReqId: event.reqId,
          pCreatedBy: event.userId,
          compId: loginInfo?.compId ?? '',
          remarks: event.remarks));

      emit(state.copyWith(postIdRequest: ResponseClassify.completed(response)));
    } catch (e) {
      emit(state.copyWith(postIdRequest: ResponseClassify.error(e)));
    }
  }

  FutureOr<void> _selectReqId(
      _SelectReqId event, Emitter<IdRequestState> emit) {
    emit(state.copyWith(index: event.index));
  }
}
