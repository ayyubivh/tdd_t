import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/get_notification_list_request.dart';
import 'package:mash/mash/domain/entities/notification/notification_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/notification/notification_use_case.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(this.getAllNotificationUseCase)
      : super(NotificationState.initial()) {
    on<_GetNotificationList>(_getNotificationList);
  }

  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final NotificationUseCase getAllNotificationUseCase;

  _getNotificationList(
      _GetNotificationList event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(notificationListData: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getAllNotificationUseCase.call(
          GetNotificationListRequest(
              compId: userdata?.compId ?? "",
              userId: userdata?.usrId ?? "",
              userType: userdata?.userType ?? ''));
      emit(state.copyWith(
        notificationListData: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          notificationListData: ResponseClassify.error(e.toString())));
    }
  }
}
