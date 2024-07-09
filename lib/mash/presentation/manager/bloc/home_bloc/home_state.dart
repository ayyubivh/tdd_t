part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required ResponseClassify<List<AddOnEntity>> addOnResponse,
    required ResponseClassify<void> postFeedback,
  }) = _HomeState;
  factory HomeState.initial() => HomeState(
        addOnResponse: ResponseClassify.initial(),
        postFeedback: ResponseClassify.initial(),
      );
}
