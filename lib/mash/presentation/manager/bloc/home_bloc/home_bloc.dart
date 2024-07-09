import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/request/add_on_request.dart';
import 'package:mash/mash/data/remote/request/feed_back_request.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_entity.dart';
import 'package:mash/mash/domain/use_cases/home/post_feed_use_case.dart';

import '../../../../domain/use_cases/auth/get_user_info_use_case.dart';
import '../../../../domain/use_cases/home/get_add_on_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAddOnUsecase getAddOnUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final PostfeedbackUsecase postfeedbackUsecase;
  HomeBloc(
      this.getAddOnUseCase, this.getUserInfoUseCase, this.postfeedbackUsecase)
      : super(HomeState.initial()) {
    on<_GetAddOnEvent>(_getAddOn);
    on<_PostFeedback>(_postFeedback);
  }

  _getAddOn(_GetAddOnEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(addOnResponse: ResponseClassify.loading()));

    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());

      final data = await getAddOnUseCase.call(AddOnRequest(
        compId: userInfo?.compId ?? "",
        categoryId: '1',
        categoryType: '2',
      ));
      emit(state.copyWith(addOnResponse: ResponseClassify.completed(data)));
    } catch (e) {
      prettyPrint(e.toString());
    }
  }

  _postFeedback(_PostFeedback event, Emitter<HomeState> emit) async {
    emit(state.copyWith(postFeedback: ResponseClassify.loading()));
    try {
      final userInfo = await getUserInfoUseCase.call(NoParams());
      final data = await postfeedbackUsecase.call(FeedbackRequest(
        userId: userInfo?.usrId ?? "",
        mobOrWeb: '1',
        rating: event.rating,
        userType: userInfo?.userType ?? '',
        modulId: event.module,
        compId: userInfo?.compId ?? "",
        fbDescription: event.description,
      ));
      emit(state.copyWith(postFeedback: ResponseClassify.completed(data)));
      prettyPrint(state.postFeedback.status.toString());
    } catch (e) {
      emit(state.copyWith(postFeedback: ResponseClassify.error(e)));
    }
  }
}
