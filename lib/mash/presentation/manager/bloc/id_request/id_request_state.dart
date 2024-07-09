part of 'id_request_bloc.dart';

@freezed
class IdRequestState with _$IdRequestState {
  const factory IdRequestState ({ required int? index,
    ResponseClassify<List<IdRequestEntity>>? getIdRequestType,  ResponseClassify<void>? postIdRequest
  }) = _IdRequestState;

  factory IdRequestState.initial() =>  const IdRequestState(index: null);
}
