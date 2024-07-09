part of 'add_on_bloc.dart';

@freezed
class AddOnEvent with _$AddOnEvent {
  const factory AddOnEvent.started() = _Started;
  const factory AddOnEvent.getAddOnData({required String categoryId, required String categorytype}) = _GetAddOnData;
  const factory AddOnEvent.getAddOnDetail({required String categoryId, required String categorytype}) = _GetAddOnDetailData;

}
