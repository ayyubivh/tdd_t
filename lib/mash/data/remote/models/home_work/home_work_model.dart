import 'package:mash/mash/domain/entities/home_work/home_work_entity.dart';

class HomeWorkReportModel extends HomeWorkReportsEntity {
  const HomeWorkReportModel({
    required super.createdDate,
    required super.description,
    required super.document,
    required super.workType,
    required super.workId,
    required super.submitDate,
    required super.lateStatus,
    required super.viewStatus,
  });

  factory HomeWorkReportModel.fromJson(Map<String, dynamic> json) {
    return HomeWorkReportModel(
      description: json['WRK_DESC'],
      document: json['WRK_DOC'],
      workType: json['WORK_TYPE'],
      workId: json['WRK_ID'],
      createdDate: json['CREATED_ON'],
      submitDate: json['SUBMIT_DATE'],
      lateStatus: json['LATE_STS'],
      viewStatus: json['VIEW_STATUS'],
    );
  }
}
