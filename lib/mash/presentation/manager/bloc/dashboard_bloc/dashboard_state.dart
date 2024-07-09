part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
    required ResponseClassify<List<TermDetailsEntity>>? termDetailsResponse,
    required ResponseClassify<ScoreBoardDetailsEntity> scoreBoardResponse,
    required int selectedTermIndex,
  }) = _DashboardState;
  factory DashboardState.initial() => DashboardState(
        wordThoughtResponse: ResponseClassify.initial(),
        termDetailsResponse: ResponseClassify.initial(),
        scoreBoardResponse: ResponseClassify.initial(),
        selectedTermIndex: 0,
      );
}
