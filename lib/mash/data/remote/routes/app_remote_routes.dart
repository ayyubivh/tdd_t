class AppRemoteRoutes {
  static const baseUrl = "https://uat.mash-edu.com/";
  static const baseUrlVendor = "https://app.avlview.com/";
  static const getTypes =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getDlDropdowns";
//auth
  static const login = "UATRESTAPI/MashFlutterRestAPI/api/user/userLogin";
  static const signOut = "UATRESTAPI/MashFlutterRestAPI/api/user/signOut";
  static const verifyUser =
      "UATRESTAPI/MashFlutterRestAPI/api/user/checkUserExist";
  static const sendOtp =
      "UATRESTAPI/MashFlutterRestAPI/api/user/changePasswordOtpSend";
  static const validateOtp =
      "UATRESTAPI/MashFlutterRestAPI/api/user/validateOtp";
  static const updatePassword =
      "UATRESTAPI/MashFlutterRestAPI/api/user/updatePassword";

  static const updateStudentProfile =
      "UATRESTAPI/MashFlutterRestAPI/api/user/updateStudentProfile";

  static const getVehicleLocation = "api/getvehiclecurrentlocation";
  static const digitalLibrary =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getDigitalLibrary";

  static const wordAndThougthofTheDay =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getWordThought";
  static const noticePopUp =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNoticePopUp";
  static const classDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getClassDetails";
  // static const

  ///profile urls

  static const getSiblings =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getStudentsSiblings";
  static const getUserDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getUserDetails";
  static const noticeAll =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNoticeDetails";
  static const academicSubjects =
      'UATRESTAPI/MashFlutterRestAPI/api/user/getAcademicsubjects';

  //home work
  static const homeWorkReports =
      'UATRESTAPI/MashFlutterRestAPI/api/user/getHomeWorkReport';
  static const homeWorkDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getHomeworkDetails";
  //notes
  static const notesReports =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNotesReport";
  static const notesDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNotesDetails";

  static const divisionDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getDivisionDetails";

  static const syllabus = "UATRESTAPI/MashFlutterRestAPI/api/user/getSyllabus";
  static const syllabusTerms =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getSyllabusTerms";
  static const newsBoard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNewsBoardView";
  static const roleMenu = "UATRESTAPI/MashFlutterRestAPI/api/user/getMenu";

  static const progressTerms =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTermProgressCard";

  static const progressCard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getProgresCardView";

  static const progressCardPdf =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getProgresscardPdf";
  static const termDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTermsDtls";
  static const scoreBoardDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getScoreBoardDtls";
  // vehicle tracker url
  static const vehicleTrackerStops =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getStudentRoutes";
  static const vehicleVendor = "api/getvehiclecurrentlocation";
  // teacher url
  static const teacherRatingList =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTeacherRatingList";
  static const teacherRatingQuestions =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTeacher_Rating_QuestionList";
  static const teacherRatingInsert =
      "UATRESTAPI/MashFlutterRestAPI/api/user/insertTeacher_Ratings";

  // id module
  static const idRequestType =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getRequestType";
  static const idRequestPost =
      "UATRESTAPI/MashFlutterRestAPI/api/user/insertRfidSubmitRequest";

  // offline exam
  static const offlineExamTerms =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTermsDtls";
  static const offlineExamTimeTable =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getOfflineTimeTableList";

  //home
  static const addON = "UATRESTAPI/MashFlutterRestAPI//api/user/getAddOn";
  static const feedBackPost =
      "UATRESTAPI/MashFlutterRestAPI/api/user/InsertFeedback";
//tc
  static const getTcStatus =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTcStatus";
  static const getTcReason =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTcReason";
  static const cancelTc = "UATRESTAPI/MashFlutterRestAPI/api/user/ForCancelTC";
  static const applyTc =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ForApplyTcCommon";

//competetive exam

  static const getCompetetiveExamTobeRegistered =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ToGetTheToBeRegisteredListOfCompetitiveExam";
  static const getCompetetiveExamTobeRegisteredDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ToGetTheDetailsOfToBeRegisteredListOfCompetitiveExam";
  static const submitCompetetiveExam =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ToSubmitTheTOBeREGISTEREDOfCompetitiveExam";
  //payment
  static const paymentDashboard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPaymentDashboard";

  static const paymentFinal =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPendingFinalAmount";

  static const paymentOrderId =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPaymentNextUniqueId";
  static const paymentToken =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPaymentToken";

  static const paymentCompleteResponse =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPaymentCompleteResponse";

  static const paymentStatusUpdate =
      "UATRESTAPI/MashFlutterRestAPI/api/user/paymentStatusUpdate";

  static const savePaymentResponse =
      "UATRESTAPI/MashFlutterRestAPI/api/user/savePaymentResponse";

  static const getFeeSuccessReceipt =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getFeeSuccessRecieptView";

  static const getFeeReceiptByDocname =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getUrlByDocname";
  // time table
  static const dailyTimeTable =
      "UATRESTAPI/MashFlutterRestAPI/api/user/selectTimetableView";

  //  library
  static const getPhysicalLibrary =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPlAllBooks";

  static const getPhysicalLibraryRequiredData =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getPlLangAuth";

  static const insertPhysicalLibraryRequest =
      "UATRESTAPI/MashFlutterRestAPI/api/user/insertBookRequest";

  // leave
  static const getLeaveDashboard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ForGetTheLeaveDashboardDetails";
  static const getLeaveStatus =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ForGetTheLeaveStatusAndCount";

  static const getAddOn = "UATRESTAPI/MashFlutterRestAPI/api/user/getAddOn";
  static const getLeaveDetails =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ForGetTheLeaveDatails";

  static const cancelLeave =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ForCancelTheLeave";

  static const applyLeave =
      "UATRESTAPI/MashFlutterRestAPI/api/user/ForApplyTheLeave";
  // facilities
  static const getFacilitiesDashboard =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getFacilityDashboard";

  static const getFacilityInstalments =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getFacilityInstallments";

  static const getFacilityStops =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTransportationStops";

  static const getFacilityAmount =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getTransportationAmount";

  static const facilitySubscription =
      "UATRESTAPI/MashFlutterRestAPI/api/user/facilitySubscribeUnsubscribe";
  static const transportationDetail =
      "UATRESTAPI/MashFlutterRestAPI/api/user/transportationRouteChangeDetails";

  static const transportationChangeStop =
      "UATRESTAPI/MashFlutterRestAPI/api/user/transportationStopChange";

  static const insertDlClick =
      "UATRESTAPI/MashFlutterRestAPI/api/user/InsertDLUserClick";

  static const getNotificationList =
      "UATRESTAPI/MashFlutterRestAPI/api/user/getNotificationPopup";
}
