part of 'add_on_bloc.dart';

@freezed
class AddOnState with _$AddOnState {
  const factory AddOnState({
  required ResponseClassify<List<GetAddOnEntity?>> getAddOnData,
    required ResponseClassify<List<AddOnDetailEntity?>> getAddOnDetailData,
  }) = _AddOnState;
   factory AddOnState.initial() => AddOnState(getAddOnData: ResponseClassify.initial(), getAddOnDetailData: ResponseClassify.initial());
}
