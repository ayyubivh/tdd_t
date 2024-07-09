// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i62;

import '../core/api_provider.dart' as _i12;
import '../core/connection_checker.dart' as _i61;
import '../core/firebase_database.dart' as _i13;
import '../core/hive_service.dart' as _i17;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i57;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i76;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i25;
import '../mash/data/remote/data_sources/add_on_data_source.dart' as _i66;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i69;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i18;
import '../mash/data/remote/data_sources/comp_exam_remote_data_source.dart'
    as _i73;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i51;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i40;
import '../mash/data/remote/data_sources/facility_data_source.dart' as _i43;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i37;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i65;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i31;
import '../mash/data/remote/data_sources/leave_data_source.dart' as _i29;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i24;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i70;
import '../mash/data/remote/data_sources/notification_remote_data_source.dart'
    as _i56;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i26;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i34;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i30;
import '../mash/data/remote/data_sources/tc__remote_data_source.dart' as _i58;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i23;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i19;
import '../mash/data/repositories/academic_repository_impl.dart' as _i42;
import '../mash/data/repositories/auth_repository_impl.dart' as _i142;
import '../mash/data/repositories/chat_repository_impl.dart' as _i36;
import '../mash/data/repositories/comp_exam_repository_impl.dart' as _i144;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i134;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i55;
import '../mash/data/repositories/facilities_repo_impl.dart' as _i68;
import '../mash/data/repositories/get_add_on_repository_impl.dart' as _i75;
import '../mash/data/repositories/home_repository_impl.dart' as _i64;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i121;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i101;
import '../mash/data/repositories/leave_repository_impl.dart' as _i93;
import '../mash/data/repositories/library_repo_impl.dart' as _i45;
import '../mash/data/repositories/notice_repository_impl.dart' as _i148;
import '../mash/data/repositories/notification_repo_impl.dart' as _i72;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i33;
import '../mash/data/repositories/payment_repo_impl.dart' as _i50;
import '../mash/data/repositories/profile_repository_impl.dart' as _i39;
import '../mash/data/repositories/tc_repo_impl.dart' as _i60;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i28;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i21;
import '../mash/domain/repositories/academic_repository.dart' as _i41;
import '../mash/domain/repositories/auth_repository.dart' as _i141;
import '../mash/domain/repositories/chat_repository.dart' as _i35;
import '../mash/domain/repositories/comp_exam_repository.dart' as _i143;
import '../mash/domain/repositories/dash_board_repository.dart' as _i133;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i54;
import '../mash/domain/repositories/facilities_respository.dart' as _i67;
import '../mash/domain/repositories/get_add_on_repository.dart' as _i74;
import '../mash/domain/repositories/home_repository.dart' as _i63;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i120;
import '../mash/domain/repositories/id_request_repository.dart' as _i100;
import '../mash/domain/repositories/leave_repository.dart' as _i92;
import '../mash/domain/repositories/library_repository.dart' as _i44;
import '../mash/domain/repositories/notice_repository.dart' as _i147;
import '../mash/domain/repositories/notification_repository.dart' as _i71;
import '../mash/domain/repositories/payment_repository.dart' as _i49;
import '../mash/domain/repositories/profile_repository.dart' as _i38;
import '../mash/domain/repositories/tc_repository.dart' as _i59;
import '../mash/domain/repositories/teacher_repository.dart' as _i27;
import '../mash/domain/repositories/time_table_repository.dart' as _i32;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i20;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i52;
import '../mash/domain/use_cases/academic/get_academic_type_use_case.dart'
    as _i124;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i97;
import '../mash/domain/use_cases/academic/get_digital_library_use_case.dart'
    as _i122;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i53;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i85;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i84;
import '../mash/domain/use_cases/academic/insert_dl_click_use_case.dart'
    as _i123;
import '../mash/domain/use_cases/add_on/get_add_on_detail_use_case.dart'
    as _i146;
import '../mash/domain/use_cases/add_on/get_add_on_list_usecase.dart' as _i145;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i169;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i171;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i170;
import '../mash/domain/use_cases/auth/send_otp_forgot_password_usecase.dart'
    as _i173;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i168;
import '../mash/domain/use_cases/auth/update_password_repository.dart' as _i174;
import '../mash/domain/use_cases/auth/validate_otp_usecase.dart' as _i175;
import '../mash/domain/use_cases/auth/verify_user_usecase.dart' as _i172;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i111;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i109;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i113;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i114;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i115;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i110;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i112;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i116;
import '../mash/domain/use_cases/comp_exam/get_comp_exam_tobe_registered_details_usecases.dart'
    as _i164;
import '../mash/domain/use_cases/comp_exam/get_comp_exam_toberegistered_usecase.dart'
    as _i163;
import '../mash/domain/use_cases/comp_exam/submit_comp_exam_tobe_registered_usecase.dart'
    as _i165;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i154;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i157;
import '../mash/domain/use_cases/dashboard/get_scoreboard_details_usecase.dart'
    as _i156;
import '../mash/domain/use_cases/dashboard/get_term_details_usecase.dart'
    as _i155;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i90;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_progress_card_pdf_usecase.dart'
    as _i91;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_progress_card_usecase.dart'
    as _i89;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_progress_terms_usecase.dart'
    as _i88;
import '../mash/domain/use_cases/facilities/faclities_sub_un_sub_use_case.dart'
    as _i150;
import '../mash/domain/use_cases/facilities/get_facility_amount_use_case.dart'
    as _i137;
import '../mash/domain/use_cases/facilities/get_facility_dashboard_use_case.dart'
    as _i135;
import '../mash/domain/use_cases/facilities/get_facility_instalments_use_case.dart'
    as _i136;
import '../mash/domain/use_cases/facilities/get_facility_stops_use_case.dart'
    as _i139;
import '../mash/domain/use_cases/facilities/get_transportation_detail_use_case.dart'
    as _i138;
import '../mash/domain/use_cases/facilities/transportation_stop_change_use_case.dart'
    as _i149;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i99;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i98;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i161;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i159;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i160;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i158;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i153;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i152;
import '../mash/domain/use_cases/leave/apply_leave_usecase.dart' as _i129;
import '../mash/domain/use_cases/leave/leave_cancel_usecase.dart' as _i126;
import '../mash/domain/use_cases/leave/leave_status_details_usecase.dart'
    as _i128;
import '../mash/domain/use_cases/leave/leave_status_usecase.dart' as _i125;
import '../mash/domain/use_cases/leave/leave_use_case.dart' as _i127;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i130;
import '../mash/domain/use_cases/library/post_physical_library_request.dart'
    as _i131;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i132;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart'
    as _i162;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i151;
import '../mash/domain/use_cases/notification/notification_use_case.dart'
    as _i81;
import '../mash/domain/use_cases/payment/get_fee_receipt_by_docname_usecase.dart'
    as _i103;
import '../mash/domain/use_cases/payment/get_payment_complete_response_usecase.dart'
    as _i105;
import '../mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart'
    as _i102;
import '../mash/domain/use_cases/payment/get_payment_fee_receipt_usecase.dart'
    as _i106;
import '../mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart'
    as _i86;
import '../mash/domain/use_cases/payment/get_payment_order_id_usecase.dart'
    as _i87;
import '../mash/domain/use_cases/payment/get_payment_token_usecase.dart'
    as _i107;
import '../mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart'
    as _i104;
import '../mash/domain/use_cases/payment/save_payment_reponse_usecase.dart'
    as _i108;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i46;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i48;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i47;
import '../mash/domain/use_cases/tc/apply_tc_usecase.dart' as _i78;
import '../mash/domain/use_cases/tc/cancel_tc_usecase.dart' as _i80;
import '../mash/domain/use_cases/tc/get_tc_reason_usecase.dart' as _i77;
import '../mash/domain/use_cases/tc/get_tc_status_usecase.dart' as _i79;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i95;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i96;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i94;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i118;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i119;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i117;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i83;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i82;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i180;
import '../mash/presentation/manager/bloc/addon_bloc/add_on_bloc.dart' as _i166;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i9;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/comp_exam/competetive_exam_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i178;
import '../mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart'
    as _i15;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i182;
import '../mash/presentation/manager/bloc/facilities_bloc/facilities_bloc.dart'
    as _i167;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i177;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i181;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart' as _i10;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i179;
import '../mash/presentation/manager/bloc/notification_bloc/notification_bloc.dart'
    as _i140;
import '../mash/presentation/manager/bloc/payment/payment_bloc.dart' as _i176;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i11;
import '../mash/presentation/manager/bloc/tc_bloc/tc_bloc.dart' as _i8;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i3;
import '../mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart'
    as _i14;
import '../mash/presentation/manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart'
    as _i16;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.TeacherBloc>(() => _i3.TeacherBloc());
    gh.factory<_i4.ChatBloc>(() => _i4.ChatBloc());
    gh.factory<_i5.IdRequestBloc>(() => _i5.IdRequestBloc());
    gh.factory<_i6.CompetetiveExamBloc>(() => _i6.CompetetiveExamBloc());
    gh.factory<_i7.LibraryBloc>(() => _i7.LibraryBloc());
    gh.factory<_i8.TcBloc>(() => _i8.TcBloc());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc());
    gh.factory<_i10.LeaveBloc>(() => _i10.LeaveBloc());
    gh.factory<_i11.ProfileBloc>(() => _i11.ProfileBloc());
    gh.singleton<_i12.ApiProvider>(() => _i12.ApiProvider());
    gh.singleton<_i13.FirebaseDatabaseMethods>(
        () => _i13.FirebaseDatabaseMethods());
    gh.lazySingleton<_i14.TimeTableBloc>(() => _i14.TimeTableBloc());
    gh.lazySingleton<_i15.DigitalLibraryBloc>(() => _i15.DigitalLibraryBloc());
    gh.lazySingleton<_i16.VehicleTrackerStopsBloc>(
        () => _i16.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i17.HiveService>(() => _i17.HiveService());
    gh.lazySingleton<_i18.ChatDataSource>(() => _i18.ChatDataSourceImpl(
          gh<_i13.FirebaseDatabaseMethods>(),
          gh<_i17.HiveService>(),
        ));
    gh.lazySingleton<_i19.VehicleTrackerDataSource>(
        () => _i19.VehicleTrackerImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i20.VehicleTrackerRepository>(
        () => _i21.VehicleTrackerRepoImpl(gh<_i19.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i22.TimeTableDataSource>(
        () => _i22.TimeTableDataSourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i23.TeacherDataSource>(
        () => _i23.TeacherDataSourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i24.LibraryDataSource>(
        () => _i24.LibraryDataSourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i25.AcademicRemoteDataSource>(
        () => _i25.AcademicRemoteDataSourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i26.OfflineExamDataSource>(
        () => _i26.OfflineExamTermImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i27.TeacherRepository>(
        () => _i28.TeacherRepoImpl(gh<_i23.TeacherDataSource>()));
    gh.lazySingleton<_i29.LeaveDataSource>(
        () => _i29.LeaveDataSourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i30.ProfileDataSource>(
        () => _i30.ProfileDataSourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i31.IdRequestTypeDataSource>(
        () => _i31.IdRequestTypeImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i32.TimeTableRepository>(() => _i33.TimeTableRepoImpl(
          gh<_i26.OfflineExamDataSource>(),
          gh<_i22.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i34.PaymentRemoteDataSource>(() =>
        _i34.PaymentRemoteDataSourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i35.ChatRepository>(
        () => _i36.ChatRepositoryImpl(gh<_i18.ChatDataSource>()));
    gh.lazySingleton<_i37.HomeRemoteDataSource>(() =>
        _i37.HomeRemoteDataSourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i38.ProfileRepository>(
        () => _i39.ProfileRepositoryImpl(gh<_i30.ProfileDataSource>()));
    gh.lazySingleton<_i40.DrawerMenuItemsRemoteDataSource>(() =>
        _i40.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i41.AcademicRepository>(
        () => _i42.AcademicRepositoryImpl(gh<_i25.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i43.FacilityDataSource>(
        () => _i43.FacilityDataSourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i44.LibraryRepository>(
        () => _i45.LibraryRepoImpl(gh<_i24.LibraryDataSource>()));
    gh.factory<_i46.GetSiblingsUseCase>(
        () => _i46.GetSiblingsUseCase(gh<_i38.ProfileRepository>()));
    gh.singleton<_i47.UpdateProfileUseCase>(
        () => _i47.UpdateProfileUseCase(gh<_i38.ProfileRepository>()));
    gh.singleton<_i48.GetUserDetailsUseCase>(
        () => _i48.GetUserDetailsUseCase(gh<_i38.ProfileRepository>()));
    gh.lazySingleton<_i49.PaymentRepository>(() => _i50.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i34.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i51.DashBoardRemoteDataSource>(() =>
        _i51.DashBoardRemoteDataSourceImpl(
            apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i52.GetAcademicSubjectUseCase>(() =>
        _i52.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i53.GetDivisionDetailsUseCase>(() =>
        _i53.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i54.DrawerMenuItemsRepository>(() =>
        _i55.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i40.DrawerMenuItemsRemoteDataSource>()));
    gh.factory<_i56.NotificationRemoteDataSourceImpl>(() =>
        _i56.NotificationRemoteDataSourceImpl(
            apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i57.AuthLocalDataSource>(() =>
        _i57.AuthLocalDataSourceImpl(hiveService: gh<_i17.HiveService>()));
    gh.lazySingleton<_i58.TcRemoteDatasource>(
        () => _i58.TcRemoteDatasourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i59.TcRepository>(
        () => _i60.TcRepoImpl(gh<_i58.TcRemoteDatasource>()));
    gh.lazySingleton<_i61.ConnectionChecker>(
        () => _i61.ConnectionCheckerImpl(gh<_i62.InternetConnectionChecker>()));
    gh.lazySingleton<_i63.HomeRepository>(() => _i64.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i37.HomeRemoteDataSource>()));
    gh.lazySingleton<_i65.HomeWorkNotesRemoteDataSource>(() =>
        _i65.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i66.AddOnDataSource>(
        () => _i66.AddOnDataSourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i67.FacilitiesRepository>(() =>
        _i68.FacilitiesRepositoryImpl(
            facilityDataSource: gh<_i43.FacilityDataSource>()));
    gh.lazySingleton<_i69.AuthRemoteDataSource>(
        () => _i69.AuthRemoteDataSourceImpl(
              gh<_i12.ApiProvider>(),
              gh<_i13.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i70.NoticeRemoteDataSource>(() =>
        _i70.NoticeRemoteDataSourceImpl(apiProvider: gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i71.NotificationRepository>(() =>
        _i72.NotificationRepositoryImpl(
            notificationRemoteDataSourceImpl:
                gh<_i56.NotificationRemoteDataSourceImpl>()));
    gh.lazySingleton<_i73.CompExamRemoteDatasource>(
        () => _i73.CompExamRemoteDatasourceImpl(gh<_i12.ApiProvider>()));
    gh.lazySingleton<_i74.GetAddOnRepository>(() => _i75.GetAddOnRepositoryImpl(
        addOnDataSource: gh<_i66.AddOnDataSource>()));
    gh.lazySingleton<_i76.DashBoardLocalDataSource>(() =>
        _i76.DashBoardLocalDataSourceImpl(hiveService: gh<_i17.HiveService>()));
    gh.factory<_i77.GetTcReasonUsecase>(
        () => _i77.GetTcReasonUsecase(gh<_i59.TcRepository>()));
    gh.factory<_i78.ApplyTcUsecase>(
        () => _i78.ApplyTcUsecase(gh<_i59.TcRepository>()));
    gh.factory<_i79.GetTcStatusUsecase>(
        () => _i79.GetTcStatusUsecase(gh<_i59.TcRepository>()));
    gh.factory<_i80.CancelTcUsecase>(
        () => _i80.CancelTcUsecase(gh<_i59.TcRepository>()));
    gh.factory<_i81.NotificationUseCase>(() => _i81.NotificationUseCase(
        notificationRepository: gh<_i71.NotificationRepository>()));
    gh.lazySingleton<_i82.GetVehicleTrackerStopsUseCase>(() =>
        _i82.GetVehicleTrackerStopsUseCase(
            gh<_i20.VehicleTrackerRepository>()));
    gh.lazySingleton<_i83.GetVehicleCurrentLocation>(() =>
        _i83.GetVehicleCurrentLocation(gh<_i20.VehicleTrackerRepository>()));
    gh.lazySingleton<_i84.GetSyllabusUseCase>(() => _i84.GetSyllabusUseCase(
        academicRepository: gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i85.GetSyllabusTermsUseCase>(() =>
        _i85.GetSyllabusTermsUseCase(
            academicRepository: gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i86.GetPaymentFinalAmountUsecase>(() =>
        _i86.GetPaymentFinalAmountUsecase(
            paymentRepository: gh<_i49.PaymentRepository>()));
    gh.lazySingleton<_i87.GetPaymentOrderIdUsecase>(() =>
        _i87.GetPaymentOrderIdUsecase(
            paymentRepository: gh<_i49.PaymentRepository>()));
    gh.lazySingleton<_i88.GetProgressTermsUsecase>(() =>
        _i88.GetProgressTermsUsecase(
            drawerMenuItemsRepository: gh<_i54.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i89.GetProgressCardUsecase>(() =>
        _i89.GetProgressCardUsecase(
            drawerMenuItemsRepository: gh<_i54.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i90.GetNewsBoardUseCase>(() => _i90.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i54.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i91.GetProgressCardPdfUsecase>(() =>
        _i91.GetProgressCardPdfUsecase(
            drawerMenuItemsRepository: gh<_i54.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i92.LeaveRepository>(
        () => _i93.LeaveRepositoryImpl(gh<_i29.LeaveDataSource>()));
    gh.lazySingleton<_i94.GetTeacherRatingQuestionsUseCase>(() =>
        _i94.GetTeacherRatingQuestionsUseCase(gh<_i27.TeacherRepository>()));
    gh.lazySingleton<_i95.GetTeacherRatingUseCase>(
        () => _i95.GetTeacherRatingUseCase(gh<_i27.TeacherRepository>()));
    gh.lazySingleton<_i96.PostTeacherRatingUseCase>(
        () => _i96.PostTeacherRatingUseCase(gh<_i27.TeacherRepository>()));
    gh.lazySingleton<_i97.GetClassInforUseCase>(
        () => _i97.GetClassInforUseCase(gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i98.PostfeedbackUsecase>(() =>
        _i98.PostfeedbackUsecase(homeRepository: gh<_i63.HomeRepository>()));
    gh.lazySingleton<_i99.GetAddOnUsecase>(
        () => _i99.GetAddOnUsecase(homeRepository: gh<_i63.HomeRepository>()));
    gh.lazySingleton<_i100.IdRequestRepository>(
        () => _i101.IdRequestRepoImpl(gh<_i31.IdRequestTypeDataSource>()));
    gh.factory<_i102.GetPaymentDashboardUsecase>(
        () => _i102.GetPaymentDashboardUsecase(gh<_i49.PaymentRepository>()));
    gh.factory<_i103.GetFeeReceiptByDocnameUsecase>(() =>
        _i103.GetFeeReceiptByDocnameUsecase(gh<_i49.PaymentRepository>()));
    gh.factory<_i104.PostPaymentStatusUpdateUsecase>(() =>
        _i104.PostPaymentStatusUpdateUsecase(gh<_i49.PaymentRepository>()));
    gh.factory<_i105.GetPaymentCompleteResponseUsecase>(() =>
        _i105.GetPaymentCompleteResponseUsecase(gh<_i49.PaymentRepository>()));
    gh.factory<_i106.GetPaymentFeeReceiptUsecase>(
        () => _i106.GetPaymentFeeReceiptUsecase(gh<_i49.PaymentRepository>()));
    gh.factory<_i107.GetPaymentTokenUsecase>(
        () => _i107.GetPaymentTokenUsecase(gh<_i49.PaymentRepository>()));
    gh.factory<_i108.SavePaymentResponseUsecase>(
        () => _i108.SavePaymentResponseUsecase(gh<_i49.PaymentRepository>()));
    gh.singleton<_i109.GetChatRoomsUseCase>(
        () => _i109.GetChatRoomsUseCase(gh<_i35.ChatRepository>()));
    gh.singleton<_i110.SendMessageUserCase>(
        () => _i110.SendMessageUserCase(gh<_i35.ChatRepository>()));
    gh.factory<_i111.AddChatRoomUseCase>(
        () => _i111.AddChatRoomUseCase(gh<_i35.ChatRepository>()));
    gh.factory<_i112.UpdateMessageUseCase>(
        () => _i112.UpdateMessageUseCase(gh<_i35.ChatRepository>()));
    gh.factory<_i113.GetChatUseCase>(
        () => _i113.GetChatUseCase(gh<_i35.ChatRepository>()));
    gh.factory<_i114.GetUserMembersUseCase>(
        () => _i114.GetUserMembersUseCase(gh<_i35.ChatRepository>()));
    gh.factory<_i115.GetUsersUseCase>(
        () => _i115.GetUsersUseCase(gh<_i35.ChatRepository>()));
    gh.factory<_i116.UpdateRoomUseCase>(
        () => _i116.UpdateRoomUseCase(gh<_i35.ChatRepository>()));
    gh.lazySingleton<_i117.GetOfflineExamTimeTableUseCase>(() =>
        _i117.GetOfflineExamTimeTableUseCase(gh<_i32.TimeTableRepository>()));
    gh.lazySingleton<_i118.GetDailyTimeTableUseCase>(
        () => _i118.GetDailyTimeTableUseCase(gh<_i32.TimeTableRepository>()));
    gh.lazySingleton<_i119.GetOfflineExamTermsUseCase>(
        () => _i119.GetOfflineExamTermsUseCase(gh<_i32.TimeTableRepository>()));
    gh.lazySingleton<_i120.HomeWorkNotesRepository>(() =>
        _i121.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i65.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i122.DigitalLibraryUseCase>(
        () => _i122.DigitalLibraryUseCase(gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i123.InsertDlClickUseCase>(
        () => _i123.InsertDlClickUseCase(gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i124.GetAcademicTypesUseCase>(
        () => _i124.GetAcademicTypesUseCase(gh<_i41.AcademicRepository>()));
    gh.lazySingleton<_i125.GetLeaveStatusUsecase>(
        () => _i125.GetLeaveStatusUsecase(gh<_i92.LeaveRepository>()));
    gh.lazySingleton<_i126.CancelLeaveUsecase>(
        () => _i126.CancelLeaveUsecase(gh<_i92.LeaveRepository>()));
    gh.lazySingleton<_i127.GetDashboardLeaveUseCase>(
        () => _i127.GetDashboardLeaveUseCase(gh<_i92.LeaveRepository>()));
    gh.lazySingleton<_i128.GetLeaveStatusDetailsUsecase>(
        () => _i128.GetLeaveStatusDetailsUsecase(gh<_i92.LeaveRepository>()));
    gh.lazySingleton<_i129.ApplyLeaveUsecase>(
        () => _i129.ApplyLeaveUsecase(gh<_i92.LeaveRepository>()));
    gh.lazySingleton<_i130.GetPhysicalLibraryUseCase>(
        () => _i130.GetPhysicalLibraryUseCase(gh<_i44.LibraryRepository>()));
    gh.lazySingleton<_i131.PostPhysicalLibraryUseCase>(
        () => _i131.PostPhysicalLibraryUseCase(gh<_i44.LibraryRepository>()));
    gh.lazySingleton<_i132.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i132.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i44.LibraryRepository>()));
    gh.lazySingleton<_i133.DashBoardRepository>(() => _i134.DashBoardRepoImpl(
          gh<_i51.DashBoardRemoteDataSource>(),
          gh<_i61.ConnectionChecker>(),
          gh<_i76.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i135.GetFacilitiesDashBoardUseCase>(() =>
        _i135.GetFacilitiesDashBoardUseCase(
            facilitiesRepository: gh<_i67.FacilitiesRepository>()));
    gh.lazySingleton<_i136.GetFacilityInstalmentsUseCase>(() =>
        _i136.GetFacilityInstalmentsUseCase(
            facilitiesRepository: gh<_i67.FacilitiesRepository>()));
    gh.lazySingleton<_i137.GetFacilityAmountUseCase>(() =>
        _i137.GetFacilityAmountUseCase(
            facilitiesRepository: gh<_i67.FacilitiesRepository>()));
    gh.lazySingleton<_i138.GetTransportationUseCase>(() =>
        _i138.GetTransportationUseCase(
            facilitiesRepository: gh<_i67.FacilitiesRepository>()));
    gh.lazySingleton<_i139.GetFacilityStopsUseCase>(() =>
        _i139.GetFacilityStopsUseCase(
            facilitiesRepository: gh<_i67.FacilitiesRepository>()));
    gh.factory<_i140.NotificationBloc>(
        () => _i140.NotificationBloc(gh<_i81.NotificationUseCase>()));
    gh.lazySingleton<_i141.AuthRepository>(() => _i142.AuthRepositoryImpl(
          gh<_i61.ConnectionChecker>(),
          authRemoteDataSource: gh<_i69.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i57.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i143.CompExamRepository>(() =>
        _i144.CompExamRepositoryImpl(gh<_i73.CompExamRemoteDatasource>()));
    gh.lazySingleton<_i145.GetAllAddOnUseCase>(() => _i145.GetAllAddOnUseCase(
        getAddOnRepository: gh<_i74.GetAddOnRepository>()));
    gh.lazySingleton<_i146.GetAddOnDetailUseCase>(() =>
        _i146.GetAddOnDetailUseCase(
            getAddOnRepository: gh<_i74.GetAddOnRepository>()));
    gh.lazySingleton<_i147.NoticeRepository>(() => _i148.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i70.NoticeRemoteDataSource>()));
    gh.lazySingleton<_i149.TransportationChangeStopUseCase>(() =>
        _i149.TransportationChangeStopUseCase(gh<_i67.FacilitiesRepository>()));
    gh.lazySingleton<_i150.FacilitySubUnSubscribeUseCase>(() =>
        _i150.FacilitySubUnSubscribeUseCase(gh<_i67.FacilitiesRepository>()));
    gh.lazySingleton<_i151.GetAllNoticeUseCase>(() => _i151.GetAllNoticeUseCase(
        noticeRepository: gh<_i147.NoticeRepository>()));
    gh.lazySingleton<_i152.PostIdRequestUseCase>(
        () => _i152.PostIdRequestUseCase(gh<_i100.IdRequestRepository>()));
    gh.lazySingleton<_i153.GetIdRequestTypeUseCase>(
        () => _i153.GetIdRequestTypeUseCase(gh<_i100.IdRequestRepository>()));
    gh.factory<_i154.FetchWordThoughtUseCase>(
        () => _i154.FetchWordThoughtUseCase(gh<_i133.DashBoardRepository>()));
    gh.factory<_i155.GetTermDetailsUsecase>(
        () => _i155.GetTermDetailsUsecase(gh<_i133.DashBoardRepository>()));
    gh.factory<_i156.GetScoreboardDetailsUsecase>(() =>
        _i156.GetScoreboardDetailsUsecase(gh<_i133.DashBoardRepository>()));
    gh.factory<_i157.GetRoleMenuUsecase>(
        () => _i157.GetRoleMenuUsecase(gh<_i133.DashBoardRepository>()));
    gh.lazySingleton<_i158.NotesReportsUseCase>(() => _i158.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i120.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i159.HomeWorkReportsUseCase>(() =>
        _i159.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i120.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i160.GetNoteReportDetails>(() =>
        _i160.GetNoteReportDetails(
            homeWorkNotesRepository: gh<_i120.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i161.GetHomeWorkDetails>(() => _i161.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i120.HomeWorkNotesRepository>()));
    gh.factory<_i162.GetNoticeBoardPopUp>(
        () => _i162.GetNoticeBoardPopUp(gh<_i147.NoticeRepository>()));
    gh.factory<_i163.GetCompExamTobeRegisteredUsecase>(() =>
        _i163.GetCompExamTobeRegisteredUsecase(gh<_i143.CompExamRepository>()));
    gh.factory<_i164.GetCompExamTobeRegisteredDetailsUsecase>(() =>
        _i164.GetCompExamTobeRegisteredDetailsUsecase(
            gh<_i143.CompExamRepository>()));
    gh.factory<_i165.SubmitCompExamTobeRegisteredUsecase>(() =>
        _i165.SubmitCompExamTobeRegisteredUsecase(
            gh<_i143.CompExamRepository>()));
    gh.factory<_i166.AddOnBloc>(() => _i166.AddOnBloc(
          gh<_i145.GetAllAddOnUseCase>(),
          gh<_i146.GetAddOnDetailUseCase>(),
        ));
    gh.factory<_i167.FacilitiesBloc>(() => _i167.FacilitiesBloc(
          gh<_i135.GetFacilitiesDashBoardUseCase>(),
          gh<_i136.GetFacilityInstalmentsUseCase>(),
          gh<_i139.GetFacilityStopsUseCase>(),
          gh<_i137.GetFacilityAmountUseCase>(),
          gh<_i150.FacilitySubUnSubscribeUseCase>(),
          gh<_i138.GetTransportationUseCase>(),
          gh<_i149.TransportationChangeStopUseCase>(),
        ));
    gh.singleton<_i168.SignOutUseCase>(
        () => _i168.SignOutUseCase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i169.GetUserInfoUseCase>(
        () => _i169.GetUserInfoUseCase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i170.SaveUserInfoUseCase>(
        () => _i170.SaveUserInfoUseCase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i171.LoginUseCase>(
        () => _i171.LoginUseCase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i172.VerifyUserUsecase>(
        () => _i172.VerifyUserUsecase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i173.SendOtpForgotPasswordUsecase>(
        () => _i173.SendOtpForgotPasswordUsecase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i174.UpdatePasswordUsecase>(
        () => _i174.UpdatePasswordUsecase(gh<_i141.AuthRepository>()));
    gh.lazySingleton<_i175.ValidateOtpUsecase>(
        () => _i175.ValidateOtpUsecase(gh<_i141.AuthRepository>()));
    gh.factory<_i176.PaymentBloc>(() => _i176.PaymentBloc(
          gh<_i102.GetPaymentDashboardUsecase>(),
          gh<_i169.GetUserInfoUseCase>(),
          gh<_i86.GetPaymentFinalAmountUsecase>(),
          gh<_i87.GetPaymentOrderIdUsecase>(),
          gh<_i107.GetPaymentTokenUsecase>(),
          gh<_i105.GetPaymentCompleteResponseUsecase>(),
          gh<_i104.PostPaymentStatusUpdateUsecase>(),
          gh<_i108.SavePaymentResponseUsecase>(),
          gh<_i106.GetPaymentFeeReceiptUsecase>(),
          gh<_i103.GetFeeReceiptByDocnameUsecase>(),
        ));
    gh.factory<_i177.HomeBloc>(() => _i177.HomeBloc(
          gh<_i99.GetAddOnUsecase>(),
          gh<_i169.GetUserInfoUseCase>(),
          gh<_i98.PostfeedbackUsecase>(),
        ));
    gh.factory<_i178.DashboardBloc>(() => _i178.DashboardBloc(
          gh<_i154.FetchWordThoughtUseCase>(),
          gh<_i169.GetUserInfoUseCase>(),
          gh<_i155.GetTermDetailsUsecase>(),
          gh<_i156.GetScoreboardDetailsUsecase>(),
        ));
    gh.factory<_i179.NoticeBloc>(() => _i179.NoticeBloc(
          gh<_i162.GetNoticeBoardPopUp>(),
          gh<_i151.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i180.AcademicBloc>(() => _i180.AcademicBloc(
          gh<_i53.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i97.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i169.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i52.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i84.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i85.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i181.HomeWorkNotesBloc>(() => _i181.HomeWorkNotesBloc(
          gh<_i159.HomeWorkReportsUseCase>(),
          gh<_i169.GetUserInfoUseCase>(),
          gh<_i158.NotesReportsUseCase>(),
          gh<_i160.GetNoteReportDetails>(),
          gh<_i161.GetHomeWorkDetails>(),
        ));
    gh.factory<_i182.DrawerBloc>(() => _i182.DrawerBloc(
          gh<_i90.GetNewsBoardUseCase>(),
          gh<_i169.GetUserInfoUseCase>(),
          gh<_i157.GetRoleMenuUsecase>(),
          gh<_i88.GetProgressTermsUsecase>(),
          gh<_i89.GetProgressCardUsecase>(),
          gh<_i91.GetProgressCardPdfUsecase>(),
        ));
    return this;
  }
}
