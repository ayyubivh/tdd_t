import 'package:flutter/material.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_models.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_term_model.dart';
import 'package:mash/mash/data/remote/models/add_on/add_on_model.dart';
import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/models/drawer_menu_items/news_board_model.dart';
import 'package:mash/mash/data/remote/models/notice/notice_pop_up_model.dart';
import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/add_on_request.dart';
import 'package:mash/mash/data/remote/request/feed_back_request.dart';
import 'package:mash/mash/data/remote/request/login_request.dart';
import 'package:mash/mash/data/remote/request/news_board_request.dart';

import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';

//auth model

const tAuthModel = AuthResponseModel(
  statusCode: 200,
  statusMessage: 'SUCCESS',
  resTable: [
    LoginResTableModel(
      studentId: 'studentId',
      admissionNo: 'admissionNo',
      studentName: 'studentName',
      compId: '200001',
      roleId: '1',
      activeStatus: '1',
      pwdChangeStatus: '1',
      profilePhoto: 'profile photo',
      eMail: 'email',
      mobile: '1',
      parentId: 'parentId',
      academicId: '1',
      academicYear: 'academic year',
      usrId: 'user id',
      divisionId: '1',
      classId: '1',
      medium: '1',
      userType: '1',
    ),
  ],
  token: '',
);

//auth request
final tLoginRequest = LoginRequest(
  userId: 'user id',
  password: 'password',
  deviceId: '123',
  appType: 'appType',
);
//login local Model
const tLoginLocalModel = LoginLocalModel(
    studentId: 'studentId',
    admissionNo: 'admissionNo',
    studentName: 'studentName',
    compId: 'compId',
    roleId: 'roleId',
    activeStatus: 'activeStatus',
    pwdChangeStatus: 'pwdChangeStatus',
    profilePhoto: 'profilePhoto',
    eMail: 'eMail',
    mobile: 'mobile',
    parentId: 'parentId',
    academicId: 'academicId',
    academicYear: 'academicYear',
    usrId: 'usrId',
    divisionId: 'divisionId',
    classId: 'classId',
    medium: 'medium',
    userType: 'userType');
/*
dashboard
*/

//--> word thought
WordThoughtsModel tWordThoughtModel = const WordThoughtsModel(
    statusCode: 200,
    statusMessage: 'SUCCESS',
    wordTable: [
      WordTableModel(
        wordId: '146',
        wordName: 'IDIOSYNCRATIC',
        wordMeaning1: "1 . Something peculiar to an individual",
        wordMeaning2:
            "2 . His teaching methods are idiosyncratic but successful.",
        hasImg: "0",
        wordImage: "",
        status: "1",
        compId: "200001",
        createdBy: "M357751",
      ),
    ],
    thoughtTable: [
      ThoughtTableModel(
        thoughtId: "21543",
        thoughtOfTheDayUrl:
            "https://schmadutheme-mash.s3.ap-south-1.amazonaws.com/Thought_UAT20240418_125655254.jpg?X-Amz-Expires=3600&response-content-disposition=inline&response-content-type=image%2Fpng&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAUJA3RQ7HZZJJJS56%2F20240510%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20240510T054322Z&X-Amz-SignedHeaders=host&X-Amz-Signature=d2534c3a2b9e54c69b12755dfdb8f3102bf1b4406261ea91c9e963dc80bf63d3",
        publishedDate: "5/10/2024 12:00:00 AM",
      ),
    ]);

//--> word thought response
final tWordThoughtRequest =
    AcademicAndCompIdRequest(pAcademicId: '87', pCompID: '200001');

//--> word thought hive model
const twordThoughtsHiveModel = WordThoughtsHiveModel(
  statusCode: 200,
  statusMessage: 'SUCCESS',
  wordTable: [
    WordTableHiveModel(
      wordId: '1',
      wordName: 'TestWord',
      wordMeaning1: 'Meaning 1',
      wordMeaning2: 'Meaning 2',
      hasImg: '0',
      wordImage: null,
      status: '1',
      compId: '1',
      createdBy: 'John Doe',
    )
  ],
  thoughtTable: [
    ThoughtTableHiveModel(
      thoughtId: '1',
      thoughtOfTheDayUrl: 'https://example.com',
      publishedDate: '2024-05-10',
    )
  ],
);
/*
notice
*/

//--> notice pop up

NoticePopUpModel tNoticePopUpModel = const NoticePopUpModel(
  topicHead: 'Sample Topic Head',
  topicDesc: 'Sample Topic Description',
  noticeDate: '2024-05-07',
  docFile: 'sample_document.pdf',
  ext: 'pdf',
);

/*
Drawer menu item
*/
//--> news board
const tNewsBoardModel = NewsBoardModel(
  compId: 'compId',
  content: 'content',
  ext: 'ext',
  coverPage: 'coverPage',
  createdBy: 'createdBy',
  description: 'description',
  newsId: 'newsId',
  newsDate: 'newsDate',
  newsTitle: 'newsTitle',
  userType: 'userType',
  allS: 'allS',
  alumni: 'alumni',
  parent: 'parent',
  staff: 'staff',
  student: 'student',
  category: 'category',
  newStatus: 'newStatus',
);
//--> news board request
final tNewsBoardRequest = NewsBoardRequest(
  pCompId: 'pCompId',
  pUserType: 'usertype',
  pSearchKey: 'pSearchKey',
  pOffset: 'pOffset',
  pLimit: 'pLimit',
);

/*
Academics
*/

//--> syllabus terms
const tSyllabusTermsModel = SyllabusTermModel(
  termId: 'termId',
  termName: 'termName',
  fromDate: 'fromDate',
  toDate: 'toDate',
);
//--> syllabusTerms request

final tSyllabusTermsRequest = SyllabusTermsRequest(
  compId: '200001',
  acadId: '87',
  classId: '152',
);
//--> syllabus
const tSyllabusModel = SyllabusModel(
  subjectId: 'subjectId',
  subjectName: 'subjectName',
  chapterIds: 'chapterId',
  chapterNames: [],
);
//--> syllabus request
final tSyllabusRequest = SyllabusRequest(
  compId: 'compId',
  acadId: 'acadId',
  userType: 'userType',
  termId: 'termId',
);

//-->
final tAddOnRequest = AddOnRequest(
  compId: 'compId',
  categoryId: 'categoryId',
  categoryType: 'categoryType',
);
//-->
const tAddOnModel = AddOnModel(
  subCategoryId: '31',
  subCategoryName: 'BETS INDIAN ABACUS',
  categoryId: '1',
  description: 'DESCRIPTION',
  imgStatus: '1',
  imgUrl: 'gbl_ntc_200002_MP357751_4_11_2023_16_5_11.png',
  links: 'https://go.indianabacus.com/manapuram-school',
);
//-->
final tFeedbackRequest = FeedbackRequest(
  userId: 'userId',
  mobOrWeb: 'mobOrWeb',
  rating: 'rating',
  userType: 'userType',
  modulId: 'modulId',
  compId: 'compId',
  fbDescription: 'fbDescription',
);
