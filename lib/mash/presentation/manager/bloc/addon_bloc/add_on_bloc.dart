
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/get_add_on_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_detail_entity.dart';
import 'package:mash/mash/domain/entities/add_on/get_add_on_entity.dart';
import 'package:mash/mash/domain/use_cases/add_on/get_add_on_detail_use_case.dart';
import 'package:mash/mash/domain/use_cases/add_on/get_add_on_list_usecase.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';

import '../../../../../core/usecase.dart';

part 'add_on_bloc.freezed.dart';
part 'add_on_event.dart';
part 'add_on_state.dart';

@injectable
class AddOnBloc extends Bloc<AddOnEvent, AddOnState> {
  AddOnBloc(this.getAddOnUseCase, this.getAddOnDetailUseCase) : super( AddOnState.initial()) {
    on<AddOnEvent>((event, emit) {
    });
    on<_GetAddOnData>(_getAddOnDataList);
    on<_GetAddOnDetailData>(_getAddOnDetailDataList);

  }

  final GetAllAddOnUseCase getAddOnUseCase;
  final GetAddOnDetailUseCase getAddOnDetailUseCase;
  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  _getAddOnDataList(_GetAddOnData event, Emitter<AddOnState> emit) async {
    emit(state.copyWith(getAddOnData: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getAddOnUseCase.call(GetAddOnRequest(pCompId: userdata?.compId ?? '', pCategoryId: event.categoryId ?? '', pCategoryType: event.categorytype ?? ''));
      emit(state.copyWith(
        getAddOnData: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getAddOnData: ResponseClassify.error(e.toString())));
    }
  }

   _getAddOnDetailDataList(_GetAddOnDetailData event, Emitter<AddOnState> emit) async {
    emit(state.copyWith(getAddOnDetailData: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      var request=GetAddOnRequest(pCompId: userdata?.compId ?? '', pCategoryId: event.categoryId ?? '', pCategoryType: event.categorytype ?? '');
      prettyPrint(request.toJson().toString());
      final data = await getAddOnDetailUseCase.call(GetAddOnRequest(pCompId: userdata?.compId ?? '', pCategoryId: event.categoryId ?? '', pCategoryType: event.categorytype ?? ''));
      prettyPrint('********* bloc data check ********');
      prettyPrint("${data}");
      emit(state.copyWith(
        getAddOnDetailData: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getAddOnDetailData: ResponseClassify.error(e.toString())));
    }
  }
}
