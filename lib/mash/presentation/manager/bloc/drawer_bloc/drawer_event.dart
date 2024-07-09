part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.getNews() = _GetNews;
  const factory DrawerEvent.getRoleMenuEvent() = _GetRoleMenuEvent;
  const factory DrawerEvent.getProgressTerms() = _GetProgressTerms;
  const factory DrawerEvent.getProgressCard({
    required String termId,
  }) = _GetProgressCard;
  const factory DrawerEvent.getProgressCardPdf({
    required String termId,
  }) = _GetProgressCardPdf;
}
