part of 'id_request_bloc.dart';

@freezed
class IdRequestEvent with _$IdRequestEvent {
  const factory IdRequestEvent.started() = _Started;
  const factory IdRequestEvent.getTransferRequestEvent() = _GetIdRequest;
  const factory IdRequestEvent.idPostRequest({required String reqId,required String remarks,required String userId}) = _IdRequestPost;
  const factory IdRequestEvent.selectRequestId({required int index}) = _SelectReqId;
}
