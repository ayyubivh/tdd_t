part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    required ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse,
    required ResponseClassify<List<RoleMenuEntity>> roleMenuResponse,
    required ResponseClassify<List<ProgressTermsEntity>> progressTermsResponse,
    required ResponseClassify<List<ProgressCardEntity>> progressCardResponse,
    required ResponseClassify<String> progressCardPdf,
  }) = _DrawerState;
  factory DrawerState.initial() => DrawerState(
        newsBoardResponse: ResponseClassify.initial(),
        roleMenuResponse: ResponseClassify.initial(),
        progressTermsResponse: ResponseClassify.initial(),
        progressCardResponse: ResponseClassify.initial(),
        progressCardPdf: ResponseClassify.initial(),
      );
}
