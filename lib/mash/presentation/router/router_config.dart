import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';
import 'package:mash/mash/presentation/pages/auth/forgot_password_user_id_screen.dart';
import 'package:mash/mash/presentation/pages/auth/login_screen.dart';
import 'package:mash/mash/presentation/pages/auth/otp_screen.dart';
import 'package:mash/mash/presentation/pages/coming_soon_screen.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/attendence_detail_screen.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/dashboard_calendar_view.dart';
import 'package:mash/mash/presentation/pages/home/addOn/add_on_screen.dart';
import 'package:mash/mash/presentation/pages/home/addOn/addon_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/attendanceStaff/attendance_marking_screen.dart';
import 'package:mash/mash/presentation/pages/home/attendanceStaff/class_attendance_mark_screen.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/competitive_exam_screen.dart';
import 'package:mash/mash/presentation/pages/home/competitiveExams/exam_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/facility/change_stop_screen.dart';
import 'package:mash/mash/presentation/pages/home/facility/facility_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/facility/transportation_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/facility/transportation_subscription_screen.dart';
import 'package:mash/mash/presentation/pages/home/feedBack/feedback_screen.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/payment_history_screen.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/fee_and_payment_confirm_screen.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/fees_and_payments_tabs.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/payment_response_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_work_view_details.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/home_works_and_notes_view.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/note_view_detais_screen.dart';
import 'package:mash/mash/presentation/pages/home/homeWork/widgets/select_home_work_and_notes_details.dart';
import 'package:mash/mash/presentation/pages/home/idCardRequest/id_card_request_screen.dart';
import 'package:mash/mash/presentation/pages/home/leave/leave_apply_screen.dart';
import 'package:mash/mash/presentation/pages/home/leave/leave_screen.dart';
import 'package:mash/mash/presentation/pages/home/leave/leave_status_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/leave/leave_status_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/insert_week_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/insert_year_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/lesson_planner_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/view_week_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/view_year_plan_screen.dart';
import 'package:mash/mash/presentation/pages/home/lessonPlanner/view_yearly_plan_list_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/academic_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/academics_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/book_detail_view.dart';
import 'package:mash/mash/presentation/pages/home/library/non_acadamic_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/research.dart';
import 'package:mash/mash/presentation/pages/home/library/user_activity_screen.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/audio_player.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/see_all_cat_medium.dart';
import 'package:mash/mash/presentation/pages/home/library/widgets/vedio_player.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/nb_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/nb_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/newsBoard/pdf_vies_screen.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/add_note_widget.dart';
import 'package:mash/mash/presentation/pages/home/notes/widgets/note_adding_screen.dart';
import 'package:mash/mash/presentation/pages/home/noticeBoard/notice_board_detail_screen.dart';
import 'package:mash/mash/presentation/pages/home/noticeBoard/notice_board_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/notification/notification_list_screen.dart';
import 'package:mash/mash/presentation/pages/home/physicalLibrary/physical_library_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/progressReport/progress_report.dart';
import 'package:mash/mash/presentation/pages/home/quiz/question_page.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_get_ready_screen.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_onboarding.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_profile.dart';
import 'package:mash/mash/presentation/pages/home/quiz/quiz_ranking_screen.dart';
import 'package:mash/mash/presentation/pages/home/suggestionBox/suggestion_box_main_screen.dart';
import 'package:mash/mash/presentation/pages/home/suggestionBox/suggestion_screen.dart';
import 'package:mash/mash/presentation/pages/home/supportScreen/mash_support_screen.dart';
import 'package:mash/mash/presentation/pages/home/syllabus/syllabus.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/teacher_list_screen.dart';
import 'package:mash/mash/presentation/pages/home/teacherRating/teacher_rating_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/daily_time_table_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/exam_timetable_screen.dart';
import 'package:mash/mash/presentation/pages/home/timeTable/weekly_time_table.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_cancel_screen.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_mainscreen.dart';
import 'package:mash/mash/presentation/pages/home/transferCertificate/tc_request_screen.dart';
import 'package:mash/mash/presentation/pages/home/vehicleTracker/vehicle_tracker_mainscreen.dart';
import 'package:mash/mash/presentation/pages/profile/profile_edit_screen.dart';
import 'package:mash/mash/presentation/pages/profile/profile_screen.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/loader.dart';
import 'package:mash/mash/presentation/widgets/common_webview.dart';

import '../../data/remote/models/chat/chat_room_model.dart';
import '../../domain/entities/dashboard/digital_library_entity.dart';
import '../../domain/entities/drawer_menu_items/news_board_entity.dart';
import '../../domain/entities/teacher_rating/teacher_rating_api_entity.dart';
import '../pages/chat/chat_screen.dart';
import '../pages/chat/create_group.dart';
import '../pages/chat/message_details.dart';
import '../pages/chat/message_screen.dart';
import '../pages/chat/new_chat.dart';
import '../pages/home/home_screen.dart';
import '../pages/home/library/academic_books.dart';
import '../pages/home/physicalLibrary/physical_library_filter_screen.dart';
import '../pages/home/quiz/quiz_completed_screen.dart';
import '../pages/splash_screen.dart';
import '../utils/enums.dart';

class AppRouteManager {
  static home([CustomBottomNavigationItems? type]) =>
      '/${type?.index ?? ':type'}';

  static Widget _homePageRouteBuilder(
      BuildContext context, GoRouterState state) {
    return HomeScreen(
      currentIndex: int.parse(state.pathParameters['type']!),
    );
  }

  static Widget navigateByUserType(
      {required Widget staff, required Widget parent, required student}) {
    // var getUser = getIt<GetUserInfoUseCase>();

    return FutureBuilder(
      future: HiveService()
          .getBox<LoginLocalModel>(boxName: LocalStorageNames.userInfo),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ValueListenableBuilder(
                valueListenable: snapshot.data!.listenable(),
                builder: (context, data, _) {
                  if (data.isNotEmpty) {
                    var user = data.values.first;

                    switch (getUserType(user.userType)) {
                      case UserTypes.staff:
                        return staff;
                      case UserTypes.student:
                        return student;
                      case UserTypes.parent:
                        return parent;
                      default:
                        return const SizedBox();
                    }
                  } else {
                    return const Loader();
                  }
                },
              )
            : const Loader();
      },
    );
  }

  static GoRouter router = GoRouter(initialLocation: AppPages.splash, routes: [
    GoRoute(
      path: AppPages.home,
      name: AppPages.home,
      builder: (context, state) => const HomeScreen(
        currentIndex: 0,
      ),
    ),
    GoRoute(
      path: AppPages.comingSoon,
      name: AppPages.comingSoon,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const ComingSoon(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: AppPages.splash,
      name: AppPages.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppPages.login,
      name: AppPages.login,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
    ),
    // GoRoute(
    //   path: AppPages.forgotPassword,
    //   name: AppPages.forgotPassword,
    //   builder: (context, state) => const ForgotPasswordScreen(),
    // ),
    GoRoute(
      path: AppPages.leaveApplyScreen,
      name: AppPages.leaveApplyScreen,
      builder: (context, state) => const LeaveApplyScreen(),
    ),
    GoRoute(
      path: AppPages.leaveStatusScreen,
      name: AppPages.leaveStatusScreen,
      builder: (context, state) => const LeaveStatusScreen(),
    ),
    GoRoute(
      path: AppPages.leaveDetailsScreen,
      name: AppPages.leaveDetailsScreen,
      builder: (context, state) {
        final data = state.extra as Map<String, dynamic>;
        return LeaveStatusDetailsScreen(
          leaveStatusId: data['leaveStatusId'] as String,
          leaveStatus: data['leaveStatus'] as String,
        );
      },
    ),

    GoRoute(
      path: AppPages.paymentResponse,
      name: AppPages.paymentResponse,
      builder: (context, state) =>
          PaymentResponseScreen(orderStatus: state.extra as OrderStatus),
    ),
    GoRoute(
      path: AppPages.otpScreen,
      name: AppPages.otpScreen,
      builder: (context, state) => const OtpScreen(),
    ),
    GoRoute(
      path: AppPages.forgotPasswordUserId,
      name: AppPages.forgotPasswordUserId,
      builder: (context, state) => const ForgotPassWordUserIdScreen(),
    ),
    GoRoute(
      path: AppPages.attendanceDetailScreen,
      name: AppPages.attendanceDetailScreen,
      builder: (context, state) {
        return const AttendenceDetailScreen();
      },
    ),
    GoRoute(
      path: "${AppPages.addonDetailScreen}/:addOnId/:addOnType",
      name: AppPages.addonDetailScreen,
      builder: (context, state) {
        final String? addOnId = state.pathParameters['addOnId'];
        final String? addOnType = state.pathParameters['addOnType'];
        return AddonDetailScreen(
          addOnId: addOnId,
          addOnType: addOnType,
        );
      },
    ),
    GoRoute(
      path: AppPages.addOnScreen,
      name: AppPages.addOnScreen,
      builder: (context, state) => const AddOnScreen(),
    ),
    GoRoute(
      path: AppPages.academicLibraryScreen,
      name: AppPages.academicLibraryScreen,
      builder: (context, state) => const AcademicsScreen(),
    ),
    GoRoute(
      path: AppPages.academicDetailLibraryScreen,
      name: AppPages.academicDetailLibraryScreen,
      builder: (context, state) {
        if (state.extra != null) {
          return AcademicDetailScreen(
              entity: state.extra as DigitalLibraryEntity);
        }
        return const SizedBox();
      },
    ),
    GoRoute(
      path: AppPages.quizOnBoardScreen,
      name: AppPages.quizOnBoardScreen,
      builder: (context, state) => const QuizOnBoarding(),
    ),
    GoRoute(
      path: AppPages.quizGetReadyScreen,
      name: AppPages.quizGetReadyScreen,
      builder: (context, state) => const QuizGetReadyScreen(),
    ),
    GoRoute(
      path: AppPages.dashboardCalendar,
      name: AppPages.dashboardCalendar,
      builder: (context, state) => const DashboardCalendarView(),
    ),
    GoRoute(
      path: AppPages.quizQuestionPage,
      name: AppPages.quizQuestionPage,
      builder: (context, state) => const QuizQuestionPage(),
    ),
    GoRoute(
      path: AppPages.homeWorkAndNotesDateSelectionScreen,
      name: AppPages.homeWorkAndNotesDateSelectionScreen,
      builder: (context, state) => HomeWorkAndNoteSelectDetailsScreen(
        screenType: state.extra as HomeWorkAndNoteScreenType,
      ),
    ),
    GoRoute(
      path: AppPages.homeWorksViewDetailsScreen,
      name: AppPages.homeWorksViewDetailsScreen,
      builder: (context, state) => HomeWorkViewDetailsScreen(
        id: state.extra as String,
      ),
    ),
    GoRoute(
      path: AppPages.transportationSubscribe,
      name: AppPages.transportationSubscribe,
      builder: (context, state) => TransportationSubscriptionScreen(
        subheadId: state.extra as String,
      ),
    ),
    GoRoute(
      path: AppPages.quizCompletedScreen,
      name: AppPages.quizCompletedScreen,
      builder: (context, state) => const QuizCompletedScreen(),
    ),GoRoute(
      path: AppPages.transportationDetailScreen,
      name: AppPages.transportationDetailScreen,
      builder: (context, state) => const TransportationDetailScreen(),
    ),
    GoRoute(
      path: AppPages.leaveScreen,
      name: AppPages.leaveScreen,
      builder: (context, state) => const LeaveScreen(),
    ),
    GoRoute(
      name: AppPages.homeWorksAndNoteViewScreen,
      path: AppPages.homeWorksAndNoteViewScreen,
      builder: (context, state) => HomeworksAndNoteView(
        screenType: state.extra as HomeWorkAndNoteScreenType,
      ),
    ),
    GoRoute(
      path: AppPages.quizProfileScreen,
      name: AppPages.quizProfileScreen,
      builder: (context, state) => const QuizProfile(),
    ),
    GoRoute(
      path: AppPages.quizRankingScreen,
      name: AppPages.quizRankingScreen,
      builder: (context, state) => const QuizRankingScreen(),
    ),
    GoRoute(
      path: AppPages.progressReport,
      name: AppPages.progressReport,
      builder: (context, state) => const ProgressReport(),
    ),
    GoRoute(
      path: AppPages.physicalLibraryFilter,
      name: AppPages.physicalLibraryFilter,
      builder: (context, state) => const PhysicalLibraryFilterScreen(),
    ),
    GoRoute(
      path: AppPages.syllabusScreen,
      name: AppPages.syllabusScreen,
      builder: (context, state) => const SyllabusScreen(),
    ),
    GoRoute(
      path: AppPages.tcMainScreen,
      name: AppPages.tcMainScreen,
      builder: (context, state) => const TransferCertificateMainScreen(),
    ),
    GoRoute(
      name: AppPages.noteViewDetails,
      path: AppPages.noteViewDetails,
      builder: (context, state) =>
          NoteViewDetailsScreen(id: state.extra as String),
    ), GoRoute(
      name: AppPages.transportationStopChangeScreen,
      path: AppPages.transportationStopChangeScreen,
      builder: (context, state) =>
          TransportationChangeStopScreen(subheadId: state.extra as String),
    ),
    GoRoute(
      name: AppPages.noteAddTeacherScreen,
      path: AppPages.noteAddTeacherScreen,
      builder: (context, state) => const NoteAddingTeacherScreen(),
    ),
    GoRoute(
      name: AppPages.addNotScreen,
      path: AppPages.addNotScreen,
      builder: (context, state) => const AddNoteScreen(),
    ),
    GoRoute(
      name: AppPages.tcCancelScreen,
      path: AppPages.tcCancelScreen,
      builder: (context, state) => const TransferCancelScreen(),
    ),
    GoRoute(
      name: AppPages.tcRequestScreen,
      path: AppPages.tcRequestScreen,
      builder: (context, state) => const TransferRequestScreen(),
    ),
    GoRoute(
      name: AppPages.newsBoardMainScreen,
      path: AppPages.newsBoardMainScreen,
      builder: (context, state) => const NewsBoardMainScreen(),
    ),
    GoRoute(
      name: AppPages.newsBoardDetailScreen,
      path: AppPages.newsBoardDetailScreen,
      builder: (context, state) {
        return NewsBoardDetailScreen(
          newsDetails: state.extra as NewsBoardEntity,
        );
      },
    ),
    GoRoute(
      name: AppPages.noticeBoardMainScreen,
      path: AppPages.noticeBoardMainScreen,
      builder: (context, state) => const NoticeBoardMainScreen(),
    ),
    GoRoute(
      name: AppPages.noticeBoardDetailScreen,
      path: AppPages.noticeBoardDetailScreen,
      builder: (context, state) => NoticeBoardDetailScreen(
        noticeId: state.extra.toString(),
      ),
    ),GoRoute(
      name: AppPages.notificationScreen,
      path: AppPages.notificationScreen,
      builder: (context, state) => NotificationListScreen(
      ),
    ),
    GoRoute(
      name: AppPages.weeklyTimetableScreen,
      path: AppPages.weeklyTimetableScreen,
      builder: (context, state) => const WeeklyTimeTable(),
    ),
    GoRoute(
      name: AppPages.suggestionMainScreen,
      path: AppPages.suggestionMainScreen,
      builder: (context, state) => const SuggestionMainScreen(),
    ),
    GoRoute(
      name: AppPages.suggestionScreen,
      path: AppPages.suggestionScreen,
      builder: (context, state) => const SuggestionScreen(),
    ),
    GoRoute(
      name: AppPages.attendanceMarkingScreen,
      path: AppPages.attendanceMarkingScreen,
      builder: (context, state) => const AttendanceMarkingScreen(),
    ),
    GoRoute(
      name: AppPages.classAttendanceMarkingScreen,
      path: AppPages.classAttendanceMarkingScreen,
      builder: (context, state) => const ClassAttendanceMarkingScreen(),
    ),
    GoRoute(
      name: AppPages.lessonPlannerMainScreen,
      path: AppPages.lessonPlannerMainScreen,
      builder: (context, state) => const LessonPlannerMainScreen(),
    ),
    GoRoute(
      name: AppPages.insertYearPlanScreen,
      path: AppPages.insertYearPlanScreen,
      builder: (context, state) => const InsertYearPlanScreen(),
    ),
    GoRoute(
      name: AppPages.viewYearPlanScreen,
      path: AppPages.viewYearPlanScreen,
      builder: (context, state) => const ViewYearPlanScreen(),
    ),
    GoRoute(
      name: AppPages.viewYearPlanListScreen,
      path: AppPages.viewYearPlanListScreen,
      builder: (context, state) => const ViewYearlyPlanListScreen(),
    ),
    GoRoute(
      name: AppPages.insertWeekPlanScreen,
      path: AppPages.insertWeekPlanScreen,
      builder: (context, state) => const InsertWeekPlanScreen(),
    ),
    GoRoute(
      name: AppPages.viewWeekPlansScreen,
      path: AppPages.viewWeekPlansScreen,
      builder: (context, state) => const ViewWeekPlanScreen(),
    ),
    GoRoute(
      name: AppPages.supportScreen,
      path: AppPages.supportScreen,
      builder: (context, state) => const MashSupportScreen(),
    ),
    GoRoute(
      name: AppPages.feedbackScreen,
      path: AppPages.feedbackScreen,
      builder: (context, state) => const FeedbackScreen(),
    ),
    GoRoute(
      name: AppPages.idCardRequestScreen,
      path: AppPages.idCardRequestScreen,
      builder: (context, state) => const IdCardRequestScreen(),
    ),
    GoRoute(
      name: AppPages.competitiveExamScreen,
      path: AppPages.competitiveExamScreen,
      builder: (context, state) => const CompetitiveExamScreen(),
    ),
    GoRoute(
      name: AppPages.feesAndPaymentScreen,
      path: AppPages.feesAndPaymentScreen,
      builder: (context, state) => const FeesAndPaymentsTabs(),
    ),
    // GoRoute(
    //   name: AppPages.paymentHistoryScreen,
    //   path: AppPages.paymentHistoryScreen,
    //   builder: (context, state) => const PaymentHistoryScreen(),
    // ),
    GoRoute(
      name: AppPages.transactionHistory,
      path: AppPages.transactionHistory,
      builder: (context, state) =>
          PaymentHistoryScreen(trackId: state.extra as String),
    ),
    GoRoute(
      path: AppPages.feesAndPaymentsConfirmation,
      name: AppPages.feesAndPaymentsConfirmation,
      builder: (context, state) =>
          PaymentConfirmationScreen(totalAmount: state.extra as String),
    ),
    GoRoute(
      name: AppPages.examTimetableScreen,
      path: AppPages.examTimetableScreen,
      builder: (context, state) => const ExamTimeTableScreen(),
    ),
    GoRoute(
      name: AppPages.physicalLibraryScreen,
      path: AppPages.physicalLibraryScreen,
      builder: (context, state) => const PhysicalLibraryMainScreen(),
    ),
    GoRoute(
      name: AppPages.vehicleTracker,
      path: AppPages.vehicleTracker,
      builder: (context, state) => const VehicleTrackerMainScreen(),
    ),
    GoRoute(
      name: AppPages.teacherRatingListScreen,
      path: AppPages.teacherRatingListScreen,
      builder: (context, state) => const TeacherListScreen(),
    ),
    GoRoute(
      name: AppPages.teacherRatingScreen,
      path: AppPages.teacherRatingScreen,
      builder: (context, state) {
        if (state.extra != null) {
          return TeacherRatingScreen(
            entity: state.extra as TeacherRatingEntity,
          );
        }
        return const SizedBox();
      },
    ),
    GoRoute(
      path: AppPages.profileScreen,
      name: AppPages.profileScreen,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: AppPages.editProfile,
      name: AppPages.editProfile,
      builder: (context, state) => EditProfileScreen(),
    ),
    GoRoute(
      path: AppPages.facility,
      name: AppPages.facility,
      builder: (context, state) => const FacilityMainScreen(),
    ),
    GoRoute(
      name: AppPages.examDetailScreen,
      path: AppPages.examDetailScreen,
      builder: (context, state) {
        if (state.extra != null) {
          return ExamDetailScreen(isRegistered: state.extra as bool);
        }

        return const SizedBox();
      },
    ),
    GoRoute(
      name: AppPages.pdfViewScreen,
      path: AppPages.pdfViewScreen,
      builder: (context, state) => PdfVieweScreen(
        path: state.extra as String,
      ),
    ),
    GoRoute(
      name: AppPages.chatsListScreen,
      path: AppPages.chatsListScreen,
      builder: (context, state) => const ChatScreen(),
    ),
    GoRoute(
      name: AppPages.createGroup,
      path: AppPages.createGroup,
      builder: (context, state) => const GroupAddScreen(),
    ),
    GoRoute(
      name: AppPages.dailyTimetableScreen,
      path: AppPages.dailyTimetableScreen,
      builder: (context, state) => const DailyTimeTableScreen(),
    ),
    GoRoute(
      name: AppPages.groupDetails,
      path: AppPages.groupDetails,
      builder: (context, state) => const MessageDetails(),
    ),
    GoRoute(
      name: AppPages.messageScreen,
      path: AppPages.messageScreen,
      builder: (context, state) {
        if (state.extra != null) {
          return MessagesScreen(
            model: state.extra as ChatRoomModel,
          );
        }
        return const Placeholder();
      },
    ),
    GoRoute(
      path: AppPages.seeAllSubMedium,
      name: AppPages.seeAllSubMedium,
      builder: (context, state) {
        if (state.extra != null) {
          return SeeAllSubAndMedium(
              type: state.extra as SeeAllNonAcademicTypes);
        }
        return const SizedBox();
      },
    ),
    GoRoute(
      path: AppPages.bookDetailDigital,
      name: AppPages.bookDetailDigital,
      builder: (context, state) {
        if (state.extra != null) {
          return BookDetailView(book: state.extra as DigitalLibraryEntity);
        }
        return const SizedBox();
      },
    ),

    GoRoute(
      name: AppPages.newChat,
      path: AppPages.newChat,
      builder: (context, state) {
        return const NewChat();
      },
    ),
    GoRoute(
      path: AppPages.nonAcademic,
      name: AppPages.nonAcademic,
      builder: (context, state) => const NonAcademic(),
    ),
    GoRoute(
      path: AppPages.research,
      name: AppPages.research,
      builder: (context, state) => const ResearchScreen(),
    ),
    GoRoute(
      path: "${AppPages.audioPlayer}/:audio/:title",
      name: AppPages.audioPlayer,
      builder: (context, state) => state.pathParameters.isNotEmpty
          ? AudioPlayerScreen(
              audio: state.pathParameters['audio'] ?? "",
              title: state.pathParameters['title'] ?? "")
          : const SizedBox(),
    ),
    GoRoute(
      path: "${AppPages.videoPlayer}/:url",
      name: AppPages.videoPlayer,
      builder: (context, state) => state.pathParameters.isNotEmpty
          ? VideoPlayerScreen(
              url: state.pathParameters['url'] ?? "",
            )
          : const SizedBox(),
    ),
    GoRoute(
      path: AppPages.academicBooksList,
      name: AppPages.academicBooksList,
      builder: (context, state) => state.extra != null
          ? AcademicBooks(
              type: state.extra as AcademicTypeEntity,
            )
          : const SizedBox(),
    ),

    GoRoute(
        path: AppPages.userActivity,
        name: AppPages.userActivity,
        builder: (context, state) => const UserActivityScreen()),
    GoRoute(
      path: "${AppPages.webview}/:url/:title",
      name: AppPages.webview,
      builder: (context, state) => state.pathParameters.isNotEmpty
          ? WebViewScreen(
              url: state.pathParameters['url'] ?? "",
              title: state.pathParameters['title'] ?? "")
          : const SizedBox(),
    ),
    GoRoute(path: home(), builder: _homePageRouteBuilder)
  ]);
}

class FadeRoute extends PageRouteBuilder {
  final Widget? page;
  final Widget? route;

  FadeRoute({this.page, this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}
