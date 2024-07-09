part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getAddOnEvent() = _GetAddOnEvent;
  const factory HomeEvent.postFeedback({
    required String module,
    required String description,
    required String rating,
  }) = _PostFeedback;
}
